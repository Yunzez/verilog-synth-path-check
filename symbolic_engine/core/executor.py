# Symbolic execution loop (cycle-by-cycle)


from symbolic_engine.core.cell_lib import cell_function_map


def run_one_cycle(ports, cells, netnames, net_vars):
    results = {}

    # Mark primary input nets (based on port direction) as available
    available_nets = set(net_vars.keys())

    # Track evaluated cells
    evaluated = set()

    # Naive fixed-point iteration (can be replaced by topo sort later)
    progress = True
    while progress:
        progress = False
        for cell_name, cell_data in cells.items():

            if cell_name in evaluated:
                continue

            cell_type = cell_data["type"]
            conns = cell_data["connections"]
            print(f"Evaluating cell: {cell_name}, type: {cell_type}")

            if cell_type not in cell_function_map:
                print(f"Skipping unknown cell type: {cell_type}")
                evaluated.add(cell_name)
                continue

            # Flatten inputs
            input_nets = []
            for port, direction in cell_data.get("port_directions", {}).items():
                if direction == "input" and port in conns:
                    input_nets.extend(conns[port] if isinstance(conns[port], list) else [conns[port]])
            print(f"Input nets for {cell_name}: {input_nets}")
            if all(net in net_vars for net in input_nets):
                # Safe to evaluate
                width_str = cell_data["parameters"].get("WIDTH", "1")
                width = int(width_str, 2) if width_str.startswith("0") else int(width_str)

                result = cell_function_map[cell_type](conns, net_vars, width)

                # Assign to output
                output_nets = conns.get("Y", [])
                if output_nets:
                    out_name = output_nets[0]
                    net_vars[out_name] = result
                    results[out_name] = result
                    available_nets.add(out_name)

                evaluated.add(cell_name)
                progress = True

    # Warn about cells that couldn't be executed
    skipped = set(cells.keys()) - evaluated
    for s in skipped:
        print(f"⚠️ Skipped cell (possibly missing inputs): {s}")

    return results

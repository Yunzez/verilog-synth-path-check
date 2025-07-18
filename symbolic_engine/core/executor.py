# Symbolic execution loop (cycle-by-cycle)


from symbolic_engine.core.cell_lib import cell_function_map
def run_one_cycle(df_cells, net_vars, top_module_info):
    results = {}

    for _, row in df_cells.iterrows():
        cell_type = row['type']
        cell_name = row['cell_name']

        if cell_type not in cell_function_map:
            print(f"Skipping unknown cell type: {cell_type}")
            continue

        # Get full connection mapping (from RTLIL, not df_cells)
        conns = top_module_info['cells'][cell_name]['connections']

        # Evaluate cell
        width_str = top_module_info['cells'][cell_name]['parameters'].get('WIDTH', '1')
        width = int(width_str, 2) if width_str.startswith('0') else int(width_str)

        result = cell_function_map[cell_type](conns, net_vars, width)

        # Assign result to output net
        output_nets = conns.get('Y', [])
        if output_nets:
            net_vars[output_nets[0]] = result
            results[output_nets[0]] = result

    return results
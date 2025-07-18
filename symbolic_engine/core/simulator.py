# Applies combinational logic (cell evaluations)

from .cell_lib import cell_function_map


def simulate_cycle(cells, state):
    for cell_name, cell in cells.items():
        typ = cell["type"]
        conns = cell["connections"]
        width = int(cell.get("parameters", {}).get("WIDTH", "1"), 2)  # binary str to int

        if typ in cell_function_map:
            result = cell_function_map[typ](conns, state.vars, width)
            out_name = conns["Y"][0]
            state[out_name] = result
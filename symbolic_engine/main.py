from symbolic_engine.core.executor import run_one_cycle
from symbolic_engine.core.state import init_symbolic_state
from symbolic_engine.ir.rtlil_loader import build_symbolic_topology, load_rtlil_json, parse_top_module

from networkx import DiGraph, topological_sort
import networkx as nx

import pandas as pd
from pprint import pprint

json_path = 'yosys-test/top.json'

# Load and parse
rtlil_data = load_rtlil_json(json_path)
top_module_info = parse_top_module(rtlil_data)
topology_graph = build_symbolic_topology(top_module_info["cells"])
pprint(topology_graph)


G = DiGraph()
for cell, deps in topology_graph["cell_deps"].items():
    for dep in deps:
        G.add_edge(dep, cell)


try:
    ordered_cells = list(nx.topological_sort(G))
    pprint(ordered_cells)

except nx.NetworkXUnfeasible:
    print("Cycle detected!")
    cycle = nx.find_cycle(G, orientation="original")
    print("Cycle:", cycle)


net_vars = init_symbolic_state(top_module_info['netnames'])
# Convert cells to readable DataFrame

# print(net_vars)
# Or write to CSV
# df_cells.to_csv("cell_summary.csv", index=False)
# You already have df_cells
outputs = run_one_cycle(
    ports=top_module_info['ports'],
    cells=top_module_info['cells'],
    netnames=top_module_info['netnames'],
    net_vars=net_vars
)

# for net, val in outputs.items():
#     print(f"{net} = {val}")
# Load & parse RTLIL JSON to internal data structures

import json
from typing import Dict, Any
import os
from collections import defaultdict

# Load RTLIL JSON
def load_rtlil_json(path: str) -> Dict[str, Any]:
    if not os.path.exists(path):
        raise FileNotFoundError(f"The file at path '{path}' does not exist.")
    if not os.path.isfile(path):
        raise ValueError(f"The path '{path}' is not a valid file.")
    with open(path, 'r') as f:
        return json.load(f)

# Parse top module structure from RTLIL JSON
def parse_top_module(rtlil_data: Dict[str, Any]) -> Dict[str, Any]:
    modules = rtlil_data.get('modules', {})
    top_module = modules.get('top', {})

    ports = top_module.get('ports', {})
    # Create a lookup map for netnames
    netnames = top_module.get('netnames', {})
    netname_lookup = {}
    for netname, details in netnames.items():
        joined_bits = "".join(map(str, details.get('bits', [])))
        netname_lookup[joined_bits] = netname
    # print(f"netname_lookup: {netname_lookup}")
    # Update cell connections to use netname lookup
    cells = top_module.get('cells', {})
    for cell_name, cell_details in cells.items():
        connections = cell_details.get('connections', {})
        updated_connections = {}
        for port, bits in connections.items():
            joined_bits = "".join(map(str, bits))
            updated_connections[port] = netname_lookup.get(joined_bits, joined_bits)
        cell_details['connections'] = updated_connections
        # print(f"Connections for cell {cell_name}: {updated_connections}")
    # Update netnames to be the lookup map


    return {
        'ports': ports,
        'cells': cells,
        'netnames': netnames,
        'netname_lookup': netname_lookup  
    }



def build_symbolic_topology(cells: dict):
    net_producers = {}          # net → cell that writes it
    cell_consumes = defaultdict(list)  # cell → input nets
    cell_outputs = defaultdict(list)   # cell → output nets

    # First pass: collect producers and connections
    for cell_name, cell in cells.items():
        conns = cell["connections"]

        for port, nets in conns.items():
            if not isinstance(nets, list):
                nets = [nets]  # normalize

            if port == "Y":  # output
                for net in nets:
                    net_producers[net] = cell_name
                    cell_outputs[cell_name].extend(nets)
            else:  # input
                cell_consumes[cell_name].extend(nets)

    # Second pass: build cell dependency graph (cellA depends on cellB if B feeds A)
    cell_deps = defaultdict(set)  # cellA → set of cells that must run before it
    for cell, input_nets in cell_consumes.items():
        for net in input_nets:
            producer = net_producers.get(net)
            if producer and producer != cell:
                cell_deps[cell].add(producer)

    return {
        "net_producers": net_producers,
        "cell_consumes": cell_consumes,
        "cell_outputs": cell_outputs,
        "cell_deps": cell_deps,  # use this for topological order
    }
# Load & parse RTLIL JSON to internal data structures

import json
from typing import Dict, Any
import os


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
    cells = top_module.get('cells', {})
    netnames = top_module.get('netnames', {})
    return {
        'ports': ports,
        'cells': cells,
        'netnames': netnames
    }



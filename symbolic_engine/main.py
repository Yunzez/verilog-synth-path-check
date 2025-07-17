from symbolic_engine.ir.rtlil_loader import load_rtlil_json, parse_top_module
import pandas as pd

json_path = 'yosys-test/top.json'

# Load and parse
rtlil_data = load_rtlil_json(json_path)
top_module_info = parse_top_module(rtlil_data)

# Convert cells to readable DataFrame
cell_summary = []
for cell_name, cell_data in top_module_info['cells'].items():
    cell_summary.append({
        'cell_name': cell_name,
        'type': cell_data.get('type', ''),
        'parameters': cell_data.get('parameters', {}),
        'connections': list(cell_data.get('connections', {}).keys())
    })

df_cells = pd.DataFrame(cell_summary)

# Display
print(df_cells)

# Or write to CSV
# df_cells.to_csv("cell_summary.csv", index=False)

# Per-cell-type symbolic evaluators (e.g., $add, $mux)
# core/cell_lib.py
from z3 import BitVecVal, If, simplify

def eval_add(conns, net_vars, width):
    a = net_vars[conns['A']]
    b = net_vars[conns['B']]
    print(f"Evaluating ADD: {a} + {b} (width: {width})")
    return simplify(a + b)

def eval_eq(conns, net_vars, width):
    a = net_vars[conns['A']]
    b = net_vars[conns['B']]
    return simplify(If(a == b, BitVecVal(1, 1), BitVecVal(0, 1)))

def eval_logic_not(conns, net_vars, width):
    a = net_vars[conns['A']]
    return simplify(If(a == 0, BitVecVal(1, 1), BitVecVal(0, 1)))

def eval_mux(conns, net_vars, width):
    s = net_vars[conns['S']]
    a = net_vars[conns['A']]
    b = net_vars[conns['B']]
    return simplify(If(s == 0, a, b))

cell_function_map = {
    '$add': eval_add,
    '$eq': eval_eq,
    '$logic_not': eval_logic_not,
    '$mux': eval_mux,
    # Add more cell handlers as needed
}

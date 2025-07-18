# SymbolicState class: maps bit_ids to Z3 expressions
from z3 import BitVec

def init_symbolic_state(netnames):
    net_vars = {}
    for net, netinfo in netnames.items():
        bits = netinfo.get('bits', [])
        width = len(bits)
        if width == 1:
            net_vars[net] = BitVec(net, 1)
        else:
            net_vars[net] = BitVec(net, width)
    return net_vars

class SymbolicState:
    def __init__(self, netnames):
        self.vars = {}
        for net, props in netnames.items():
            width = len(props["bits"])
            self.vars[net] = BitVec(net, width)

    def __getitem__(self, name):
        return self.vars[name]

    def __setitem__(self, name, value):
        self.vars[name] = value
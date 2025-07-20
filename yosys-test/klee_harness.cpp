#include "Vtop.h"
#include "verilated.h"
#include "Vtop___024root.h"
#include <klee/klee.h>

int main(int argc, char **argv)
{
    Verilated::commandArgs(argc, argv);
    Vtop *top = new Vtop;

    // We will analyze the design for 3 symbolic "cycles"
    for (int i = 0; i < 3; i++)
    {
        // 2. Make inputs SYMBOLIC instead of giving them concrete values
        // klee_make_symbolic tells KLEE to treat this variable as an input it can control.
        klee_make_symbolic(&top->RST, sizeof(top->RST), "RST");
        klee_make_symbolic(&top->enable, sizeof(top->enable), "enable");
        klee_make_symbolic(&top->value, sizeof(top->value), "value");

        // Simulate one clock tick
        top->CLK = 0;
        top->eval();
        top->CLK = 1;
        top->eval();

        // 3. Use an ASSERTION to check for bugs
        // We are telling KLEE: "The 'state' register must NEVER be 3 or higher."
        // If KLEE can find a way to violate this, it has found a bug.
        // klee_assert(top->rootp->top__DOT__state < 3);
        if (!(top->rootp->top__DOT__state < 3))
        {
            klee_report_error("state_violation", 1, "state >= 3", "violation");
        }
    }
}
#include "Vcounter.h"
#include "verilated.h"
#include "verilated_vcd_c.h"

int main(int argc, char **argv, char **env) {
    Verilated::commandArgs(argc, argv);
    Vcounter* top = new Vcounter;
    VerilatedVcdC* tfp = new VerilatedVcdC;

    Verilated::traceEverOn(true);
    top->trace(tfp, 99);
    tfp->open("wave.vcd");

    int cycles = 100;
    top->clk = 0;
    top->rst = 1;
    top->en = 0;

    for (int i = 0; i < cycles; i++) {
        // Toggle clock
        top->clk = !top->clk;

        // Stimulus
        if (i == 2) top->rst = 0;
        if (i > 3) top->en = 1;

        top->eval();
        tfp->dump(i * 10);
    }

    tfp->close();
    delete top;
    return 0;
}

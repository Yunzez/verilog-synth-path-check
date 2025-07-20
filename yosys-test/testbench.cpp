#include "Vtop.h"      // Include the Verilator-generated model
#include "verilated.h" // Common utilities
#include "Vtop___024root.h"
#include <iostream>

int main(int argc, char **argv)
{
    Verilated::commandArgs(argc, argv);

    Vtop *top = new Vtop; // Create instance of the model

    // Simulate 10 clock cycles
    for (int i = 0; i < 10; i++)
    {
        top->CLK = 0;
        top->eval();

        top->RST = (i < 2); // RST=1 for first 2 cycles
        top->enable = 1;
        top->value = i; // Feed changing inputs

        top->CLK = 1;
        top->eval();

        std::cout << "Cycle " << i << ": LED = " << (int)top->led << ", state = " << (int)top->value << " State = " << (int)top->rootp->top__DOT__state << "\n";
    }

    delete top;
    return 0;
}

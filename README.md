# verilog-synth-path-check


install yosys from their realease, depress the zip file, then you can run 
```
../oss-cad-suite/bin/yosys synth.ys
```


produce RTLIL in yosys-json format, for verilog: 
 ```
 ../oss-cad-suite/bin/yosys -p "read_verilog top.v; proc; write_json top.json"
 ```


 produce RTLIL in yosys-json format, for netlist: 
 ../oss-cad-suite/bin/yosys -p "read_verilog netlist.v; hierarchy -auto-top; proc; opt; write_json netlist.json"


doc for yosys RTLIL
```
https://yosyshq.readthedocs.io/projects/yosys/en/0.46/yosys_internals/formats/rtlil_rep.html
```


## To run the engine 
```
verilog-synth-path-check % python3 -m venv venv  
verilog-synth-path-check % source venv/bin/activate
verilog-synth-path-check % python -m symbolic_engine.main

```


## run verilator and klee

```
# Step 1: Compile Verilog + testbench to generate Verilator simulation model
# (Generates Vtop.cpp, Vtop.h, etc., and also includes your harness in the Makefile)
verilator -cc top.v --exe klee_harness.cpp -Mdir obj_dir

# Step 2: (Optional) Re-run Verilator without the testbench if needed
# (Use this to isolate the hardware model for standalone use)
verilator -cc top.v -Mdir obj_dir

# Step 3: Build the Verilated model with your testbench
make -C obj_dir -f Vtop.mk Vtop

# Step 4: Compile the testbench to LLVM bitcode for symbolic execution with KLEE
# (Make sure this matches your target architecture; this example is for x86_64 macOS)
clang++ -std=c++17 -target x86_64-apple-macos12 \
  -Iobj_dir \
  -I/usr/local/share/klee/include \
  -I/usr/local/share/verilator/include \
  -I/usr/local/share/verilator/include/vltstd \
  -emit-llvm -c klee_harness.cpp -o klee_harness.bc

```
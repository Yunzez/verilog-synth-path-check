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

# you can also try this test bench to see if your verilator works correctly by doing
verilator -cc top.v --exe testbench.cpp -Mdir obj_dir
make -C obj_dir -f Vtop.mk Vtop
./obj_dir/Vtop

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

# Compile the KLEE harness to LLVM bitcode
clang++ -std=c++17 \
  -Iobj_dir \
  -I/home/linuxbrew/.linuxbrew/include \  # or your KLEE include path
  -I/usr/local/share/verilator/include \
  -I/usr/local/share/verilator/include/vltstd \
  -emit-llvm -c klee_harness.cpp -o klee_harness.bc

# Compile the Verilator runtime to bitcode
clang++ -std=c++17 -emit-llvm -c \
  /usr/local/share/verilator/include/verilated.cpp \
  -I/usr/local/share/verilator/include \
  -I/usr/local/share/verilator/include/vltstd \
  -o verilated.bc

# Compile the Verilator aggregate source file to bitcode
clang++ -std=c++17 -emit-llvm -c obj_dir/Vtop__ALL.cpp \
  -Iobj_dir \
  -I/usr/local/share/verilator/include \
  -I/usr/local/share/verilator/include/vltstd \
  -o obj_dir/Vtop__ALL.bc

# Link everything into a single bitcode file for KLEE
llvm-link klee_harness.bc verilated.bc obj_dir/Vtop__ALL.bc -o final.bc

# Run KLEE
klee final.bc

```
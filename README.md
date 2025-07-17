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
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

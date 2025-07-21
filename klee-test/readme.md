This is a simple klee test that proves your klee works

run 
```
klee-test % clang++ -std=c++17 -I/home/linuxbrew/.linuxbrew/include -emit-llvm -c simple_klee.cpp -o simple_klee.bc
klee-test % klee simple_klee.bc
```


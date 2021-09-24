# WaBeSa: WebAssembly Benchmark for Static Analyses

WaBeSa is a benchmark for static analyses tools that analyze WebAssembly binary files. The benchmark
consists of 150 test cases. Each of these 150 test cases is provided as binary file and as text file using
the WebAssembly text format.

The test cases are distributed among three categories as follows:

- call graph: 15
- control-flow graph: 23
- data-flow graph: 112

## Adaptation of the Test Cases

It is possible to adapt the test cases by modifying the text files. Then the new test cases
can be translated into binary files using the script **build.sh**.

The WebAssembly Binary Toolkit ([WABT](https://github.com/WebAssembly/wabt)) is required for running the script **build.sh**.
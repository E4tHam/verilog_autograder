
# Verilog Autograder

Example of a verilog autograder.

## Adding a test

* Add /${TEST}.core
* Add /testbenches/${TEST}.tb.v
* Add /solutions/${TEST}.v
* Add `make diffs/or_gate.diff` to run_autograder
* Add `"${TEST}.core"` to setup.sh in `FILES`
* Add unit test to /generate-results/tests/test_functions.py

## To Do

* Add Yosys support

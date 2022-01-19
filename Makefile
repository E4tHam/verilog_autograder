
fusesoc.conf:
	fusesoc library add tests . --sync-type=local

build/e4tham_gsag_%_1.0.0/solution_sim-icarus/output.txt: fusesoc.conf
	fusesoc run --target solution_sim e4tham:gsag:$*

build/e4tham_gsag_%_1.0.0/submission_sim-icarus/output.txt: fusesoc.conf
	fusesoc run --target submission_sim e4tham:gsag:$*

diffs/%.diff: build/e4tham_gsag_%_1.0.0/solution_sim-icarus/output.txt build/e4tham_gsag_%_1.0.0/submission_sim-icarus/output.txt
	mkdir -p diffs
	-diff -wB $^ > $@

clean:
	rm -rf fusesoc.conf diffs build autograder.zip

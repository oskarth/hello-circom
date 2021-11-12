.PHONY: circuits witness_js witness_cpp

circuits:
	circom circuits/multiplier2.circom --r1cs --wasm --sym --c -o build

# XXX Assuming old binary used as compiler
circom1_circuits:
	circom circuits/circom1_multiplier2.circom -r build/circom1_multiplier.r1cs -w build/circom1_multiplier.wasm

witness_js:
	node build/multiplier2_js/generate_witness.js build/multiplier2_js/multiplier2.wasm circuits/input.json build/witness_js.wtns

witness_cpp:
	make -C build/multiplier2_cpp/
	 ./build/multiplier2_cpp/multiplier2 circuits/input.json build/witness_cpp.wtns

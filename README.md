# Playing around with Circom 2.0

``` sh
make circuits
make witness_js
make witness_cpp
```

Old compiler, for debugging differences with other libraries:

``` sh
# XXX: Assumes `circom` command is using old Circom 1.0 compiler
make circom1_circuits
```

## Minimal WitnessCalculator read prime example

``` sh
> node multiplier2_js/generate_witness.js multiplier2_js/multiplier2.wasm circuits/input.json build/witness.wtns

*** WitnessCalculator constructor
*** WitnessCalculator version= 2 n32= 8
*** WitnessCalculator prime 21888242844879328548818664213742077600362041385367538672338993241347936223233n
*** calculateWitness
*** _doCalculateWitness input= { a: 3, b: 11 }
```

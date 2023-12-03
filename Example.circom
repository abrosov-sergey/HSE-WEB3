pragma circom 2.0.0;

include "node_modules/circomlib/circuits/comparators.circom";

template Multiplier2 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;  
   signal output c;  

   // Constraints.  
   c <== a * b;  
}

component main = Multiplier2();
pragma circom 2.0.0;

// [assignment] Modify the circuit below to perform a multiplication of three signals

template Multiplier2 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;  
   signal output c;  

   // Constraints.  
   c <== a * b;  
}

template Multiplier3 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;
   signal input c;
   signal output d;  

   component first = Multiplier2();
   component second = Multiplier2();

   first.a <== a;
   first.b <== b;

   second.a <== first.c;
   second.b <== c;

   // Constraints.  
   d <== second.c;

}

component main = Multiplier3();
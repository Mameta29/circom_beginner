pragma circom 2.1.5;

template Multiply() {
  signal input x;
  signal input y;
  signal input z;
  signal s1;
  signal output out;
  
  s1 <== x * y;
  out <== s1 * z;
//   out <== x * y * z;
}

component main{public [z]} = Multiply();
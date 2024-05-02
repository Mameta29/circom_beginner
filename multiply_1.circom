pragma circom 2.1.5;

template Powers() {
    signal input a;
    signal output powers[6];
   
    powers[0] <== a;
    powers[1] <== powers[0] * a;
    powers[2] <== powers[1] * a;
    powers[3] <== powers[2] * a;
    powers[4] <== powers[3] * a;
    powers[5] <== powers[4] * a;
    
}
component main = Powers();
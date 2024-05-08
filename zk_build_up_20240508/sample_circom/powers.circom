pragma circom 2.1.5;

// 変数使用
template Powers(n) {
    signal input a;
    signal output powers[n];
    
    powers[0] <== a;
    for (var i = 1; i < n; i++) {
        powers[i] <==  powers[i - 1] * a;
    }
}
component main = Powers(6);

// 変数使用しない
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

// 複数テンプレート使用可能
template Square() {

    signal input in;
    signal output out;

    out <== in * in;
}

template SumOfSquares() {
    signal input a;
    signal input b;
    signal output out;

    component sq1 = Square();
    component sq2 = Square();

    // wiring the components together
    sq1.in <== a;
    sq2.in <== b;

    out <== sq1.out + sq2.out;
}

component main = SumOfSquares();
pragma solidity 0.6.12;

contract A {
    using Math for int
    function div(int a, int b) public pure returns (int) {
        return a.div(b);
    }
}

library Math {
    function div(int a, int b) public pure return (int) {
        require(b!=0, "Err: div by zero");
        return a/b;
    }
}
// Open Zeppelin - Safe Math, ERC20
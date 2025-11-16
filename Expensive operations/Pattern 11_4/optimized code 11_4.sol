//optimized code
pragma solidity 0.8.30;

contract C {
    uint[] x = new uint[](100);
    function p12(address account) public {
        uint y = x.length;
        for (uint i = 0; i < 100; i++) {
                x[i] = x[y - 1] ;
        }
    }
}
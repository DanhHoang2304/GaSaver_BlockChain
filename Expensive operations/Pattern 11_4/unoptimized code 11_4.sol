//unoptimized code
pragma solidity 0.8.30;

contract C {
    uint[] x = new uint[](100);
    function p12(address account) public {
        for (uint i = 0; i < 100; i++) {
                x[i] = x[x.length - 1];
        }
    }
}
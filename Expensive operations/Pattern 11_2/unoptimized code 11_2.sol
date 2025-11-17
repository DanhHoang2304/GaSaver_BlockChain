//unoptimized code
pragma solidity 0.8.30;

contract C {
    uint num = 0;
    function p11(uint x) public{
        for(uint i = 0 ; i < x ; i++) {
            num += 1;
        }
    }
}
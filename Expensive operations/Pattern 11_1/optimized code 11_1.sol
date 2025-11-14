//optimized code
pragma solidity 0.7.0;

contract C {
    uint x = 0;
    function p11() public{
        for(uint i = 0 ; i < 100 ; i++) {
            x += 1;
        }
    }
}
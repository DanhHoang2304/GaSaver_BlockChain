//unoptimized code
pragma solidity 0.8.30;

contract C {
    uint x = 0;
    uint num = 100;
    function p11() public{
        for(uint i = 0 ; i < num ; i++) {
            x += 1;
        }
    }
}
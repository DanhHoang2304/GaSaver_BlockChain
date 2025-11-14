//optimized code
pragma solidity 0.7.0;

contract C {
    function p9(uint x) public{
        uint m;
        uint n;
        for(uint i=0;i<x;i++){
            m+=i;
            n+=i;
        }
    }
}
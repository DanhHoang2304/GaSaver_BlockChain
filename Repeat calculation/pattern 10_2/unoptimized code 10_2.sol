//unoptimized code
pragma solidity 0.8.30;

contract C {
    uint a = 1;
    uint b = 100;
    function p10() public  {
        uint sum = 0;
        for(uint i = 0; i <= a * b; i++) {
            sum++;
        }
    }
}
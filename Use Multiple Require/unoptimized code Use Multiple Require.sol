//unoptimized code
pragma solidity 0.8.30;

contract B {
    function p6(uint256 a,uint256 b) public returns(uint256){
        require(a>5);
        require(b==0);
        return a;
    }
}
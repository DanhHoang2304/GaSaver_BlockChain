//optimized code
pragma solidity 0.8.30;

contract A {
    function p4(uint256 balance,uint256 amount ) public {
        require(balance >= amount, "Insufficient balance");
        
    }
}
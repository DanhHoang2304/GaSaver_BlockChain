//unoptimized code
pragma solidity 0.8.30;

contract A {
    function p4(uint256 balance,uint256 amount )public{
        require(balance >= amount, "To whomsoever it may concern. I am writing this error message to let you know that the amount you are trying to transfer is unfortunately more than your current balance. ");
    }
}
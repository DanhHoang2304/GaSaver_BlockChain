//optimized code
pragma solidity ^ 0.4.0;

contract A {
    
    function onlyloop(uint x,uint y) returns(uint){
        if(x>0) 
        for(int i = 0;i<100;i++)
            y+=x;
        return y;
    }
}
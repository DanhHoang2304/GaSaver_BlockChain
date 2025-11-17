//unoptimized code
pragma solidity 0.8.30;

contract C {
      function p12(uint x,uint y) public {
        for(uint i = 0 ; i < 100 ; i++){
            if(x>0) 
                y+=x;
                x--;
        }    
    }
}
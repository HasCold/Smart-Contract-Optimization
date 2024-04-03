// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract operator{
    
    function multiplyByTwo(uint x) public pure returns(uint){
        // x * 2;  Multiply by 6   // 	841 gas
        return  x<<1;   // left shift operator is used for the multiplication  ->> execution cost after applying the left shift operator is 602 gas
    }

    function divideByTwo(uint x) public pure returns(uint){
        // x / 2;   //  749 gas 
        return  x>>1;   //  right shift operator is used for the division  -->> execution cost after applying the right shift operator is 580 gas
    }
}
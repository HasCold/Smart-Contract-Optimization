// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Storage {
    // uint8 x = 3;  // uint8 usually represents one byte ; A byte consists of 8 bits. 2^8 - 1
 
    function remainder(uint8 b) public pure returns(uint8){
        return b%3;  // 2908 gas , 773 gas
    }

// 6%3 = 0
// 7%3 = 1
}
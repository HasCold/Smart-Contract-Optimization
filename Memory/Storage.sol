// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Storage {

    // 135164 gas, After changing the line of variable 113302 gas  
    // With Variable Packing  -  512 bits
    // w/o Variable Packing - 256 * 3 = 768 bits
    uint128 x = 16;
    uint128 z = 9;
    uint256 y = 12;

// NOTE :- When you are not using the variable packing so you must use the uint256 means 256 bits to assign the variable which will reduce the gas cost as compared to the other declared uint8, uint128, uint64 etc.

// In ethereum, everything is stored in a 32 bytes slots. 
// 1 byte = 8 bits ;
// 32 bytes = 32 * 8 = 256 bits   // -> uint256

// uint8 -> 8 bits in byte = Remaining bits = 256 - 8 = 248 bits so in the remaining bit slots the ethereum will patch the zero(0) so that's why it will consume more gas cost.
}
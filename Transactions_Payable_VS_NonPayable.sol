// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract consume{
    function pay() external {  
        // Transaction Cost: 76347 gas // It has revert function which means it has to use their opcodes to check whether someone is not sending the ether and in this case we have seen the gas consumption is higher than the fucntion which is payable.  

    }

     // Payable function can only be send or accept the ether
    // function pay() external payable { // Transaction Cost: 73975 gas  // It has not revert function that's why gas consumption is low.

    // }
}
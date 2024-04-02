// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract Storage {
    uint256 private number;  // Initially 0

    function incrment() public view returns(uint){
        unchecked{  // Yul Syntax
            return number + 1;
        }
    }

}
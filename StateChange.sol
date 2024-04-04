// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Final {
    uint[] public array;
    uint public sum; // We will use the sum in the loop function so that's why we have optimize the with the _sum 

    constructor(){
        array = [1,2,3,4,5];
    }

    function unchecked_inc(uint x) private pure returns(uint){
        unchecked{return x + 1;}  // Because the use of unchecked the number of opcodes for overflow protection will minimize and in this case the gas cost will also reduce.
    }

    function loop() external {
        uint _sum; 
        uint[] memory arr = array;  // Optimize the array because we will not write or read the original State Variable of array 

            // 256 bits = 0 to 2^256 - 1 // We will not use the solidity overflow protection
        for(uint i = 0; i < arr.length; i = unchecked_inc(i)){ // When we use unchecked so it means we are not using the overflow protection of solidity
            _sum = _sum + arr[i];
        }
        sum = _sum;
    }
}
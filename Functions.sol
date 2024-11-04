pragma solidity ^0.8.13;
// SPDX-License-Identifier: MIT

contract FunctionExamples {
    // State variables
    uint public count;
    uint[] public dynamicArray;

    // Constructor
    constructor() {
        count = 0; // Initialize count to 0
    }

    //Simple Function: Increments count by 1
    function increment() public {
        count += 1;
    }

    //Function with Return Value: Returns current count
    function getCount() public view returns (uint) {
        return count; 
    }

    //Function with Parameters: Adds a value to the dynamic array
    function addToDynamicArray(uint value) public {
        dynamicArray.push(value); 
    }

    //View Function: Returns the length of the dynamic array
    function getDynamicArrayLength() public view returns (uint) {
        return dynamicArray.length; 
    }

  
 
    //Function to update the count with a parameter
    function setCount(uint _count) public {
        count = _count; 
    }

    //Pure Function: A function that neither reads nor modifies state
    function multiply(uint a, uint b) public pure returns (uint) {
        return a * b; 
    }

}

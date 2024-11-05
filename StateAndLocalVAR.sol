pragma solidity ^0.8.13;
// SPDX-License-Identifier: MIT

contract Example {
    // State variable
    uint public stateVariable;

    // Constructor to initialize state variable
    constructor(uint _initialValue) {
        stateVariable = _initialValue; 
    }

    // Function to demonstrate local variable usage
    function setValue(uint newValue) public {
        // Local variable
        uint tempValue = newValue * 2;
        stateVariable = tempValue; 
    }

    // Function to demonstrate local variable scope
    function getValue() public view returns (uint) {
        uint localValue = stateVariable + 10; 
        return localValue; 
    }
}

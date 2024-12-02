pragma solidity ^0.8.13;


//SPDX-License-Identifier: MIT


contract Wallet {
    address public owner;
    uint public initialBalance;

    constructor(address _owner, uint _initialBalance) {
        owner = _owner;
        initialBalance = _initialBalance;
    }
}

contract Parent {
    uint public value;

    constructor(uint _value) {
        value = _value;
    }
}

contract Child is Parent {
    string public childName;
    
    constructor(uint _childValue, string memory _childName) Parent(_childValue) {
        childName = _childName; 
    }
}

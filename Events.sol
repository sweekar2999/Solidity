// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank {
    mapping(address => uint256) public bal;

    // Constructor to initialize the contract with Ether
    constructor() payable {
        require(msg.value > 0, "Please send Ether to initialize the contract");
        bal[msg.sender] = msg.value;
    }

    // Deposit function that allows users to deposit a specified amount
    function deposit(uint256 amount) public payable {
        require(msg.value == amount, "Incorrect Ether sent");
        bal[msg.sender] += msg.value; // Add the specified deposit amount to the user's balance
    }

    // Withdraw function
    function withdraw(uint256 amt) public {
        require(bal[msg.sender] >= amt, "Insufficient balance");
        bal[msg.sender] -= amt;
        payable(msg.sender).transfer(amt);
    }

    // Function to get the contract's total balance
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

pragma solidity ^0.8.13;

//SPDX-License-Identifier: MIT
contract Handler{
    uint256 balance=4000;
     function withdraw(uint amount) public {
    require(amount <= balance, "Insufficient balance");
    balance -= amount;

}


function deposit(uint amount) public {
    balance += amount;
    assert(balance >= amount); // Ensures the balance hasn't unexpectedly become negative
}

function depositWithRevert(uint amount) public {
    if (amount == 0) {
        revert("Deposit amount must be greater than zero");
    }
    
    balance += amount;
}



}
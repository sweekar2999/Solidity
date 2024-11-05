pragma solidity ^0.8.13;
// SPDX-License-Identifier: MIT

contract GlobalVariablesExample {
    // State variables to store global variable values
    address public owner;
    address public Myblockhash;
    uint256 public difficulty;
    uint256 public gaslimit;
    uint256 public timestamp;
    uint256 public nowOn;
    uint256 public value;
    uint256 public number;
    uint256 public gasprice;
    address public origin;
    bytes4 public Firstfour;
    bytes public callData;
    constructor(){
        owner=msg.sender;
        Myblockhash=block.coinbase;
        // difficulty=block.difficulty;
        gaslimit=block.gaslimit;
        timestamp=block.timestamp;
        // nowOn=
        // value=
        number=block.number;
        gasprice=tx.gasprice;
        origin=tx.origin;
        Firstfour=msg.sig;
        callData=msg.data;
    }


    
    
}

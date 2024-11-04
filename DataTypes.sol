pragma solidity ^0.8.13;
// SPDX-License-Identifier: MIT

contract Datatypes {
    bool public hey;
    bool public i = true;

    // uint8 ranges  0-2**8-1 =255
    uint8 public bb = 55;
    // int256 ranges from -2 ** 255 to 2 ** 255 -1
    int public u8 = -1;

    // Max and min value for int256
    int public intMax = type(int).max;
    int public intMin = type(int).min;

    // Fixed-size byte array
    bytes1 public a1;
    bytes1 public b2 = 0x35;

    // Addresses
    address public addr1;
    address public addr2 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // --------------------
    // Array Examples
    // --------------------

//. Dynamic Array of uint
    uint[] public dynamicArray;

 
    // Array of Addresses
    address[] public addressList;

}

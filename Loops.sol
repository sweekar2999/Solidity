pragma solidity ^0.8.13;

//SPDX-License-Identifier: MIT
contract loop{
    function sumWhile(uint n) public pure returns (uint) {
    uint sum = 0;
    uint i = 0;
    while (i < n) {
        sum += i;
        i++;
    }
    return sum;
}
function sumDoWhile(uint n) public pure returns (uint) {
    uint sum = 0;
    uint i = 0;
    do {
        sum += i;
        i++;
    } while (i < n);
    return sum;
}

function sumFor(uint n) public pure returns (uint) {
    uint sum = 0;
    for (uint i = 0; i < n; i++) {
        sum += i;
    }
    return sum;
}


}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FallBack{
    event log(string func, uint gas);
    fallback() external payable{
        emit log("fallback",gasleft());
    }
    receive()external payable{
       emit log("receive",gasleft());
    }
    function getBalance()public view returns(uint256){
        return address(this).balance;
    }
}
contract fallbackSender{
    function sendUsgTransfer(address payable addr)public payable{
       addr.transfer(msg.value);
    }

}
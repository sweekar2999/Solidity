pragma solidity ^0.8.13;

//SPDX-License-Identifier: MIT
contract Event{
    uint256 noOfTickets;
    uint256 ticketPrice;
    uint256 totalAmount;
    uint256 startAt;
    uint256 endAt;
    uint256 timeRange;
    string public message="Buy Ur First Ticket";
    

    constructor(uint256 _value){
        ticketPrice=_value;
        startAt=block.timestamp;
        endAt=block.timestamp+7 days;
        timeRange=(endAt-startAt)/60/60/24;


    }
    function buyTicket(uint256 _number)public returns(uint256 ticketId){
        noOfTickets++;
        totalAmount+=_number*ticketPrice;
        ticketId=noOfTickets;

    }
    function getValue()public view returns (uint256){
        return totalAmount;
    }


}
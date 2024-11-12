// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingExamples {

    mapping(address => uint) public balances;
    function updateBalance(address user, uint newBalance) public {
        balances[user] = newBalance;
    }
    function getBalance(address user) public view returns (uint) {
        return balances[user];
    }

    struct UserInfo {
        string name;
        uint age;
    }

    mapping(uint => UserInfo) public users;

    function addUser(uint userId, string memory name, uint age) public {
        users[userId] = UserInfo(name, age);
    }

    function getUser(uint userId) public view returns (string memory, uint) {
        UserInfo memory user = users[userId];
        return (user.name, user.age);
    }



    mapping(address => mapping(string => uint)) public grades;

    function setGrade(address student, string memory subject, uint grade) public {
        grades[student][subject] = grade;
    }

    function getGrade(address student, string memory subject) public view returns (uint) {
        return grades[student][subject];
    }
  
}

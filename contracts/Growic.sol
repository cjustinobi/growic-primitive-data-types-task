// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;


contract Mapping {

    uint balance;

    mapping (address => User) users;

    struct User {
        uint bal;
    }

    function deposit (uint256 amount) public {
        users[msg.sender].bal += amount;
    }

    function checkBalance() public view returns(uint) {
        return users[msg.sender].bal;
    }
}
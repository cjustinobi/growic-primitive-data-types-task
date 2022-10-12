// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Struct {
	struct User {
		string name;
		uint256 age;
	}

	mapping(address => User) users;

	function setUserDetails(string calldata _name, uint256 _age) public {

		users[msg.sender] = User({name: _name, age: _age});

	}

	function getUserDetail() public view returns (string memory name, uint256 age) {
		User storage user = users[msg.sender];
		return (user.name, user.age);
	}

}
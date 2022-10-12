// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Struct {
	struct User {
		string name;
		uint256 age;
	}

	User[] public users;

	function setUserDetails(string calldata _name, uint256 _age) public {

		users.push(User({name: _name, age: _age}));

	}

	function getUserDetail(uint _index) public view returns (string memory name, bool age) {
		User storage user = users[_index];
		return (user.name, user.age);
	}
}
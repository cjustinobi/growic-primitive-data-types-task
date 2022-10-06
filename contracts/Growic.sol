// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract PrimitiveDataTypesTask {

    address public owner;

    mapping (address => Student) students;

    struct Student {
        address studentID;
        string fullName;
        uint percentage;
        uint totalMarks;
    }


    constructor() {
        owner = msg.sender;
    }

    function register(
        address studentID,
        string memory fullName,
        uint percent,
        uint total

    ) public onlyOwner notAdded (studentID) {

        students[studentID] = Student(
            studentID,
            fullName,
            percent,
            total
        );
    }


    function getStudentDetails(address _studentID) public view returns (
        address,
        string memory,
        uint,
        uint
    ) {
        return (
        students[_studentID].studentID,
        students[_studentID].fullName,
        students[_studentID].percentage,
        students[_studentID].totalMarks
        );
    }

    modifier onlyOwner() {
        require(msg.sender == owner, 'Not owner');
        _   ;
    }

    modifier notAdded(address studentAddress) {
        require(students[studentAddress].studentID != studentAddress, 'Student already added');
        _   ;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorage {
    // Biến number sẽ có giá trị mặc định là 0
    uint256 number;

    struct Person {
        uint256 id;
        string name;
    }

    // Dynamic array
    Person[] public peoples;

    // Mapping
    mapping(string => uint256) public nameToId;

    function store(uint256 _number) public {
        number = _number;
    }

    function addPerson(uint256 _id, string memory _name) public {
        peoples.push(Person(_id, _name));
        nameToId[_name] = _id;
    }

    // Getter functions
    function getNumber() public view returns (uint256) {
        return number;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorage {
    uint256 public number; // storage variable

    uint256[] public arrayOfNumber;
    uint256[5] public fixedArrayOfNumber;

    struct Person {
        string name;
        uint256 number;
    }

    Person[] public dynamicArrayOfPerson;

    mapping(string name => uint256 number) public nameToNumber;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function pushToArrayOfNumber(uint256 newNumber) public {
        arrayOfNumber.push(newNumber);
    }

    function pushToFixedArrayOfNumber(uint256 index, uint256 newNumber) public {
        fixedArrayOfNumber[index] = newNumber;
    }

    function pushToDynamicArrayOfPerson(string memory name, uint256 _number) public {
        dynamicArrayOfPerson.push(Person({name: name, number: _number}));
    }

    function addNumberForName(string memory name, uint256 _number) public {
        nameToNumber[name] = _number;
    }
}

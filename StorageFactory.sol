// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageContracts;

    function createSimpleStorage() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        simpleStorageContracts.push(newSimpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _number) public {
        simpleStorageContracts[_simpleStorageIndex].store(_number);
    }

    function sfGetNumber(uint256 _simpleStorageIndex) public view returns (uint256) {
        return simpleStorageContracts[_simpleStorageIndex].getNumber();
    }
}

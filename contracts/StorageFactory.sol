// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

// contract StorageFactory is SimpleStorage { // Inheritance!!
contract StorageFactory {
    // Allows tracking all deployed instances
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage_ = new SimpleStorage();
        simpleStorageArray.push(simpleStorage_);
    }

    function sfUpdateNumber(uint256 _simpleStorageIdx, uint256 _simpleStorageNumber) public {
        SimpleStorage(address(simpleStorageArray[_simpleStorageIdx])).setFavNumber(_simpleStorageNumber);
    }

    function sfGetNumber(uint256 _simpleStorageIdx) public view returns(uint256) {
        return SimpleStorage(address(simpleStorageArray[_simpleStorageIdx])).getFavNumber();
    }
}

//write a smart contract that implements the require(), assert() and revert() statements.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ErrorHandlingContract {
    uint public  value;

    function setValue(uint newValue) external {
        require(newValue > value, "New value must be greater than the current value");
        assert(newValue != 0);
        value = newValue;
    }

    function getValue() external view returns (uint) {
        return value;
    }

    function withdraw(uint amount) external {
        require(amount <= value, "Insufficient balance");
        value -= amount;

        if (value == 0) {
            revert("Value reached zero");
        }
    }
}

# ETHAVAXModule1

# Error Handling Contract

The ErrorHandlingContract is a Solidity smart contract that demonstrates the usage of `require()`, `assert()`, and `revert()` statements for error handling.

## Purpose

The purpose of this contract is to showcase different error handling mechanisms available in Solidity. It implements functions that utilize `require()`, `assert()`, and `revert()` statements to handle various conditions and ensure the contract's state remains valid.

## Functionality

### `setValue(uint newValue)`

The `setValue` function allows setting a new value. It takes in one parameter:
- `newValue`: The new value to be set.

The function uses the `require()` statement to validate that the new value is greater than the current value. If the condition is not met, an exception is thrown with the specified error message. It then uses the `assert()` statement to check that the new value is not zero. If the condition is not satisfied, it will result in an assertion failure.

### `getValue()`

The `getValue` function retrieves the current value stored in the contract. It does not require any parameters.

### `withdraw(uint amount)`

The `withdraw` function allows withdrawing a specified amount from the contract's value. It takes in one parameter:
- `amount`: The amount to be withdrawn.

The function uses the `require()` statement to ensure that the amount being withdrawn does not exceed the contract's value. If the condition is not met, an exception is thrown with the specified error message. It then deducts the specified amount from the contract's value. If the resulting value reaches zero, the function uses the `revert()` statement to revert the transaction, reverting any changes made so far and preventing the value from reaching zero.

## License

This contract is released under the [MIT License](https://opensource.org/licenses/MIT).

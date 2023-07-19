# FunctionErrorHandling Smart Contract

The `FunctionErrorHandling` smart contract contains three functions, each illustrating different error handling mechanisms available in Solidity: `require()`, `assert()`, and `revert()`.

## Function Details

### requireexample

```solidity
function requireexample(uint x) public pure returns (bool){
        require(x%2==0,"Number must be Even.");
        return true;
    }
```

This function checks whether the input number `x` is even or not. If the condition is not met, it throws an error with the message "Number must be Even." The function returns `true` if the requirement is satisfied.

### assertexample

```solidity
function assertexample(uint x, uint y) public pure returns(bool){
        assert(x+y<50);
        return true;
    }
```

This function takes two input numbers `x` and `y`, and it checks whether their sum is less than 50. If the condition is not met, it throws an error, and the entire transaction will be reverted. The function returns `true` if the assertion is successful.

### revertexample

```solidity
function revertexample(uint x) public pure returns(bool){ 
        if(x<=10){
            revert("Number must be greater than 10.");
        }
        return true;
    }
```

This function verifies whether the input number `x` is greater than 10. If the condition is not met, the function will revert the entire transaction with the message "Number must be greater than 10." The function returns `true` if the check passes successfully.

## Error Handling

In Solidity, error handling is crucial for writing secure smart contracts. The three mechanisms demonstrated in this contract serve different purposes:

- `require()`: Used for validating user inputs or preconditions. If the requirement fails, the transaction is reverted, and the gas is refunded to the sender.

- `assert()`: Used to check for internal errors or invariants that should never be false. If an assertion fails, the transaction is reverted, and any remaining gas is lost.

- `revert()`: Used to explicitly revert the state changes when certain conditions are not met. It allows you to provide a custom error message to explain the reason for the revert.

**License**

This smart contract is released under the MIT License. See [LICENSE](link_to_license_file) for more details.

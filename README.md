# Solidity Smart Contract Example

This project demonstrates the use of `require()`, `assert()`, and `revert()` statements in a Solidity smart contract.

## Overview

The smart contract (`ExampleContract.sol`) includes the following features:
- A constructor to set the owner of the contract.
- A function to deposit Ether into the contract.
- A function to withdraw Ether from the contract, restricted to the owner.
- A function to transfer ownership of the contract.
- Functions to demonstrate the usage of `assert()` and `revert()` statements.

## Usage

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/Solidity-Smart-Contract-Example.git
    cd Solidity-Smart-Contract-Example
    ```

2. Compile and deploy the contract using a Solidity-compatible IDE (e.g., Remix, Truffle).

3. Interact with the contract through the deployed interface.

## Smart Contract Walkthrough

### Functions

- `deposit(uint256 amount)`: Allows users to deposit Ether into the contract. The `require` statement ensures the deposit amount is greater than zero and matches the sent value.
- `withdraw(uint256 amount)`: Allows the owner to withdraw Ether from the contract. The `require` statement ensures the contract has sufficient balance.
- `transferOwnership(address newOwner)`: Transfers ownership of the contract to a new address. The `require` statement ensures the new owner address is not zero.
- `testAssert(uint256 testValue)`: Demonstrates the use of the `assert` statement by checking that the test value is not zero.
- `testRevert(uint256 testValue)`: Demonstrates the use of the `revert` statement by reverting if the test value is zero.

## Author

Your Name

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.

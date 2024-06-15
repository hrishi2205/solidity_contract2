// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    function deposit(uint256 amount) public payable {
        require(amount > 0, "Deposit amount must be greater than zero");
        require(msg.value == amount, "Sent value does not match the deposit amount");
        balance += amount;
    }

    function withdraw(uint256 amount) public onlyOwner {
        require(amount <= balance, "Insufficient balance");
        balance -= amount;
        payable(owner).transfer(amount);
    }

    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "New owner is the zero address");
        owner = newOwner;
    }

    function testAssert(uint256 testValue) public pure {
        assert(testValue != 0);
    }

    function testRevert(uint256 testValue) public pure {
        if (testValue == 0) {
            revert("Test value cannot be zero");
        }
    }
}

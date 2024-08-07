// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
/*
Getter functions can be declared view or pure.
View function declares that no state will be changed.
view可读不可写  能改memory不能改storage

Pure function declares that no state variable will be changed or read.
不读不写只返回

payable可转账
*/
contract ViewAndPure {
    uint256 public x = 1;

    // Promise not to modify the state.
    function addToX(uint256 y) public view returns (uint256) {
        y += 1;
        return x + y;
    }

    // Promise not to modify or read from the state.
    function add(uint256 i, uint256 j) public pure returns (uint256) {
        return i + j;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
/*
    Constants are variables that cannot be modified.
    常量不可被修改

    Their value is hard coded and using constants can save gas cost.
    常量的值是硬编码的，使用常量可以节省gas
*/
contract Constants {
    // coding convention to uppercase constant variables  常量习惯性大写
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint256 public constant MY_UINT = 123;
}
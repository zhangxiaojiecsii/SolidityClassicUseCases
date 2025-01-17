// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
/*
    Immutable variables are like constants. 不可变量类似常量 只不过没有初始化赋值
    Values of immutable variables can be set inside the constructor but cannot be modified afterwards.
    可以在声明的时候对 immutable 变量初始化
    或者在构建函数初始化
    二者选其一
*/
contract Immutable {
    // coding convention to uppercase constant variables
    address public immutable MY_ADDRESS;
    uint256 public immutable MY_UINT;

    constructor(uint256 _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}
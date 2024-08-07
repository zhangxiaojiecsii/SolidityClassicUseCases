// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/*
There are 3 types of variables in Solidity 3种类型的变量
local 局部变量
declared inside a function not stored on the blockchain
方法内声明 不存储在区块链上

state状态变量
declared outside a function stored on the blockchain
声明在方法外  存储在区块链上

global 全局变量 提供区块链的相关信息
(provides information about the blockchain
*/

contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint256 public num = 123;

    function doSomething() public view{
        // Local variables are not saved to the blockchain.
        uint256 i = 456;
                i  += 1;
        // Here are some global variables
        uint256 timestamp = block.timestamp; // Current block timestamp
        timestamp += 2;
        address sender = msg.sender; // address of the caller
        
        payable(sender);
        
    }
}
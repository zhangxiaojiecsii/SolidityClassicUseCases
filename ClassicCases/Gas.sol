// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
/*
How much ether do you need to pay for a transaction?
You pay gas spent * gas price amount of ether

gas is a unit of computation    gas是一个计量单位

gas spent is the total amount of gas used in a transaction
gas price is how much ether you are willing to pay per gas

Transactions with higher gas price have higher priority to be included in a block.
gas价格较高的交易在区块中具有更高的优先级。
Unspent gas will be refunded. 未花费的gas将被退还

Gas Limit
There are 2 upper bounds to the amount of gas you can spend  gas的两个上限

gas limit (max amount of gas you're willing to use for your transaction, set by you) 自行设定的交易最大使用多少gas

block gas limit (max amount of gas allowed in a block, set by the network)  区块允许的最大gas
*/
contract Gas {
    uint256 public i = 0;

    // Using up all of the gas that you send causes your transaction to fail. gas用光交易失败

    // State changes are undone.        状态不会回退
    // Gas spent are not refunded.   gas不会退还
    function forever() public {
        // Here we run a loop until all of the gas are spent
        // and the transaction fails
        while (true) {
            i += 1;
        }
    }
}
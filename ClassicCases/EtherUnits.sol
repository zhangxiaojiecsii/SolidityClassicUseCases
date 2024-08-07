// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
/*
Transactions are paid with ether.
交易要用以太币支付
Similar to how one dollar is equal to 100 cent, one ether is equal to 10(18) wei.
1以太币等于 10的18次方 wei
1wei等于1
*/
contract EtherUnits {
    uint256 public oneWei = 1 wei;
    // 1 wei is equal to 1
    bool public isOneWei = (oneWei == 1);

    uint256 public oneGwei = 1 gwei;
    // 1 gwei is equal to 10^9 gwei
    bool public isOneGwei = (oneGwei == 1e9);

    uint256 public oneEther = 1 ether;
    // 1 ether is equal to 10^18 wei
    bool public isOneEther = (oneEther == 1e18);
}
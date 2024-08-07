// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Account {
    uint256 public balance;
    uint256 public constant MAX_UINT = 2 ** 256 - 1;

    //保证存入后余额增多
    function deposit(uint256 _amount) public {
        uint256 oldBalance = balance;
        uint256 newBalance = balance + _amount;

        // balance + _amount does not overflow if balance + _amount >= balance
        require(newBalance >= oldBalance, "Overflow");

        balance = newBalance;

        assert(balance >= oldBalance);
    }

    //取款不能大于余额
    function withdraw(uint256 _amount) public {
        uint256 oldBalance = balance;

        // balance - _amount does not underflow if balance >= _amount
        require(balance >= _amount, "Underflow");//余额大于等于取款金额正常执行否则抛异常

        if (balance < _amount) {
            revert("Underflow");
        }

        balance -= _amount;
        
        assert(balance <= oldBalance);//保证取款后余额减少
    }
}
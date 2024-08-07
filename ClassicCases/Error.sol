// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
/*
    require 为false时抛异常终止执行
    revert没有判断直接终止抛异常
    require 相当于 if(false){revert}
    assert(false)会抛异常   一般情况下，我们都是在函数结尾的时候使用 assert 来检查合约的状态。
*/
contract Error {
    function testRequire(uint256 _i) public pure {
        // Require should be used to validate conditions such as:
        // - inputs
        // - conditions before execution
        // - return values from calls to other functions
        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint256 _i) public pure {
        // Revert is useful when the condition to check is complex.
        // This code does the exact same thing as the example above
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    uint256 public num;

    function testAssert() public view {
        // Assert should only be used to test for internal errors,
        // and to check invariants. 检查不变性

        // Here we assert that num is always equal to 0
        // since it is impossible to update the value of num
        assert(num == 0);//保证num的最终值不可被更改
    }

    // custom error 自定义异常处理
    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function testCustomError(uint256 _withdrawAmount) public view {
        uint256 bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({
                balance: bal,
                withdrawAmount: _withdrawAmount
            });
        }
    }
}
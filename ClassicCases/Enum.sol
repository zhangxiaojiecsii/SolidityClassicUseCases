// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
/*
Solidity supports enumerables and they are useful to model choice and keep track of state.

Enums can be declared outside of a contract. 
枚举增加代码可读性，跟踪状态的改变   枚举可以定义才合约之外
*/

 enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }
contract Enum {
    // Enum representing shipping status
    // Default value is the first element listed in
    // definition of the type, in this case "Pending"
    Status public status;

    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // You can update to a specific enum like this
    function cancel() public {
        status = Status.Canceled;
    }

    // delete resets the enum to its first value, 0 delete枚变量会将其默认改为第一个值
    function reset() public {
        delete status;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
/*
Variables are declared as either storage, memory or calldata to explicitly specify the location of the data.

storage variable is a state variable (store on blockchain)
memory variable is in memory and it exists while a function is being called
calldata special data location that contains function arguments


声明「引用类型」的时候必须要加上数据位置。这通常指的是在函数体里面的声明。
注意有个例外：声明状态变量时不需要加上数据位置
*/
contract DataLocations {
    uint256[] public arr;
    mapping(uint256 => address) map;

    struct MyStruct {
        uint256 foo;
    }

    mapping(uint256 => MyStruct) myStructs;

     function _f(
        uint256[] storage _arr,
        mapping(uint256 => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // do something with storage variables
        arr[0] = _arr[1];
        map[5] = _map[6];
        myStructs[3] = _myStruct;

    }

    function f() public {
        // call _f with state variables
        _f(arr, map, myStructs[1]);

        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];
        myStruct.foo = 4;
        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
        myMemStruct.foo  = 6;
    }

   

    // You can return memory variables
    function g(uint256[] memory _arr) public returns (uint256[] memory) {
        //memory可读可写
        _arr[0] = 2;
        return _arr;

    }

    function h(uint256[] calldata _arr) external {
        //calldata 可读不可写
        arr[3] = _arr[1];
    }
}
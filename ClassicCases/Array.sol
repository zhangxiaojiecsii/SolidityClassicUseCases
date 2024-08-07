// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Array {
    // Several ways to initialize an array
    uint256[] public arr;
    uint256[] public arr2 = [1, 2, 3];

    // Fixed sized array, all elements initialize to 0 静态自己数组元素的值默认初始化为0
    uint256[10] public myFixedSizeArr;

    function get(uint256 i) public view returns (uint256) {
        return arr[i];
    }

    // Solidity can return the entire array. 数组可以最为方法的出参

    // But this function should be avoided for arrays that can grow indefinitely in length. 
    //但是，对于长度可以无限增长的数组，应该避免使用此函数。
    function getArr() public view returns (uint256[] memory) {
        return arr;
    }


    //只有动态数组，并且其数据位置为 storage 的时候才有成员函数 push() , push(x) , pop()。注意这三个成员函数会改变数组的长度
    function push(uint256 i) public {
        // Append to array
        // This will increase the array length by 1.
        arr.push(i);
    }

    function pop() public {
        // Remove last element from array
        // This will decrease the array length by 1
        arr.pop();
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    function remove(uint256 index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0   delete不会改变数组长度，只是把对应的值改为0
        delete arr[index];
    }

    function examples() external pure{
        // create array in memory, only fixed size can be created
        //定义memory类型的数组必须是定长的
        uint256[] memory a = new uint256[](5);
            a[0] = 1;
    }
}
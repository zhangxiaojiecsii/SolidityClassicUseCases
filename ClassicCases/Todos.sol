// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./StructDeclaration.sol";

/*
You can define your own type by creating a struct.

They are useful for grouping together related data.

Structs can be declared outside of a contract and imported in another contract.
*/
contract Todos {
    

    // An array of 'Todo' structs
    Todo[] public todos;

    function create(string calldata _text) public {
        // 3 ways to initialize a struct 3种初始化结构体的方法
        // - calling it like a function
        todos.push(Todo(_text, false));

        // key value mapping 建议用这种 代码可读性高
        todos.push(Todo({text: _text, completed: false}));

        // initialize an empty struct and then update it 结构体种元素较多时建议用这种
        Todo memory todo;
        todo.text = _text;
        // todo.completed initialized to false

        todos.push(todo);
    }

    // Solidity automatically created a getter for 'todos' so
    // you don't actually need this function.
    function get(uint256 _index)
        public
        view
        returns (string memory text, bool completed)
    {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    // update text
    function updateText(uint256 _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // update completed
    function toggleCompleted(uint256 _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
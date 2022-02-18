pragma solidity ^0.0.0;

contract Todos {

    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string memory _text) public {
        // 3 ways to init struct
        // - call like function
        todos.push(Todo(_text, false));

        // - key, value mapping
        todos.push(Todo({text: _text, completed: false}));

        // - init empty struct, update
        Todo memory todo;
        todo.text = _text;
        todos.push(todo);
    }

    // update
    function update(uint _index, string memory _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    function toggleCompleted(uint _index) public {
        Todo storage tood = todos[_index];
        todo.completed = !todo.completed;
    }
}


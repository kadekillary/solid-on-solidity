pragma solidity ^0.0.0;

contract MyFirstContract {

    string private name;
    uint private age;

    function setName(string memory newName) public {
        name = newName;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function setAge(uint newAge) public {
        age = newAge;
    }
}


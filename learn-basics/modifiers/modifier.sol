pragma solidity ^0.0.0;

contract PLACEHOLDER {
    address owner;
    string private name;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, 'Not Owner');
        _;
    }

    function setName(string memory newName) public onlyOwner {
        name = newName;
    }

    function getName() public view returns (string memory) {
        return name;
    }
}


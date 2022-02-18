pragma solidity ^0.0.0;

contract Mapping {
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        return myMap[_addr];
    }

    func set(address _addr, uint, _i) public {
        myMap[_addr] = _i;
    }
}

contract NestedMapping {
    mapping(address => mapping(uint => bool)) public nested;
}


pragma solidity ^0.0.0;

contract PLACEHOLDER {
    // view -> reads data from BC
    function getBlock() public view returns (uint) {
        uint blockNumber = block.number;
        return blockNumber;
    }

    // pure -> does not modify state AND does not read state
    function getResult() public pure returns (uint) {
        uint a = 5;
        uint b = 7;
        sum = a + b;
        return sum;
    }
}


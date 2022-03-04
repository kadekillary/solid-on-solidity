pragma solidity ^0.0.0;

library MathLib {
    function multiply(uint a, uint b) public view returns (uint, address) {
        return (a * b, address(this))
    }
}

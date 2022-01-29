pragma solidity ^0.5.0;


// globals -> get info about blockchain
// block.difficulty
// block.number

contract SampleContract {
    // state variables -> saved to blockchain
    uint storedData;

    function getResult() public view returns(uint) {
        // local variables -> not stored on chain
        uint a = 7;
        uint b = 3;
        uint result = a + b;
        
        return result;
    }
}

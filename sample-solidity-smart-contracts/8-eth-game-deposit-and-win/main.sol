pragma solidity ^0.0.0;

// a game where the 14th person that deposits ether wins all the ether
// in the contract

contract EtherGame {
    uint public targetAmount = 14 ether;
    address public winner;

    // to prevent forcefully sending ether
    uint public balance;

    // call deposit function and send 1 ether
    function deposit() public payable {
        require(msg.value == 1 ether, "can only send 1 ether");

        balance += msg.value;
        require(balance <= targetAmount, "game is over");

        if balance == targetAmount {
            winner = msg.sender;
        }
    }

    function claimReward() public {
        require(msg.sender == winner, "not winner");
        (bool sent, ) = msg.sender.call{value: address(this).balance}("");
        require(sent, "failed to send ether");
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}


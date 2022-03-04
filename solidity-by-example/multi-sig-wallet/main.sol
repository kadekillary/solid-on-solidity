pragma solidity ^0.0.0;

// multi-sig wallet
//
// owners can:
//  * submit transaction
//  * approve and revoke pending transactions
//  * anyone can execute a transaction after enough owners have approved

contract MultiSigWallet {
    event Deposit(address indexed sender, uint amount, uint balance);
    event SubmitTransaction(
        address indexed owner,
        uint indexed txIndex,
        address indexed to,
        uint value,
        bytes data,
    );
    event ConfirmTransaction(address indexed owner, uint indexed txIndex);
    event RevokeConfirmation(address indexed owner, uint indexed txIndex);
}


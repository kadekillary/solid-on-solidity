# Solidity Tips

#### Visibility Modifiers

* `private` -> callable from other functions inside contract
* `internal` -> like private, but can be called by inherited contracts
* `external` -> only called from outside the contract

#### State Modifiers

* `view` -> running function, no data will be changed/saved
* `pure` -> doesn't save or read any data
    * no gas -> if called externally
    * yes gas -> if called internally

#### Custom Modifiers

* `custom` -> logic to determine how they affect a function

#### Payable Modifier

* `payable` -> special function that can receive ether

##### Example

```solidity
function test() external view onlyOwner anotherModifier {/*...*/}
```

# Solidity Tips

#### Storage Locations

* `storage` -> state variables stored on blockchain, location is
  persistent
    - assignment b/w storage -> memory creates independent copy
    - assignment b/w storage -> local storage assign reference
* `memory` -> exist during function call, location is temporary
    - assignment from mem -> mem only create references
* `calldata` -> non-modifiable, non-persistent and only for external
  functions

#### Visibility Modifiers

* `private` -> callable from other functions inside contract
* `internal` -> like private, but can be called by inherited contracts
* `external` -> only called from outside the contract
* `public` -> available to any contract or 3rd party that wants to call
  it

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

#### Functions

* functions -> create transaction on BC
* functions -> do not create transaction on BC

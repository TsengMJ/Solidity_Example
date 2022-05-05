// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract CommonType {
    address public owner;
    uint256 public deployedTime; // uint => uint 256
    string public desc = "Origianl Description";

    constructor() {
        owner = msg.sender;
        deployedTime = block.timestamp;
    }

    function getDesc() public view returns (string memory) {
        return desc;
    }

    function updateDesc(string memory _desc) public {
        desc = _desc;
    }
}

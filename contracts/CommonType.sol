// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract CommonType {
    address private owner;
    uint256 internal deployedTime; // uint => uint 256
    string public desc = "Origianl Description";

    constructor() {
        owner = msg.sender;
        deployedTime = block.timestamp;
    }
}

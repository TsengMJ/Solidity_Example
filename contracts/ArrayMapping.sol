// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ArrayMapping {
    address public owner;
    address[] public whiteListArray;
    mapping(address => bool) public whiteListMapping;

    constructor() public {
        owner = msg.sender;
    }

    function addUserIntoWhiteListArray(address _user) public {
        uint256 length = whiteListArray.length;
        uint256 index = 0;
        for (_; index < length; index++) {
            if (whiteListArray[index] == _user) {
                break;
            }
        }

        if (index == length) {
            whiteListArray.push(_user);
        }
    }

    function removeUserFromWhiteListArray(address _user) public {
        uint256 length = whiteListArray.length;
        uint256 index = 0;

        for (_; index < length; index++) {
            if (whiteListArray[index] == _user) {
                break;
            }
        }

        require(index < length);

        for (_; index < length - 1; index++) {
            whiteListArray[index] = whiteListArray[index + 1];
        }

        whiteListArray.length--;
    }

    function addUserIntoWhiteListMapping(address _user) public {
        whiteListMapping[_user] = true;
    }

    function removeUserFromWhiteListMapping(address _user) public {
        whiteListMapping[_user] = false;
    }
}

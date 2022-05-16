// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ArrayMapping {
    address public owner;
    address[] public whiteListArray;
    mapping(address => bool) public whiteListMapping;

    modifier isOwner () {
      require(msg.sender == owner);
    }

    constructor() {
        owner = msg.sender;
    }

    // @isOwner 
    function addUserIntoWhiteListArray(address _user) public isOwner isOwner2 {
      // require(msg.sender == owner);
        uint256 length = whiteListArray.length;
        uint256 index = 0;
        for (; index < length; index++) {
            if (whiteListArray[index] == _user) {
                break;
            }
        }

        if (index == length) {
            whiteListArray.push(_user);
        }
    }

    function addUserIntoWhiteListMapping(address _user) public isOwner {
        whiteListMapping[_user] = true;
    }

    function removeUserFromWhiteListArray(address _user) public {
        uint256 length = whiteListArray.length;
        uint256 index = 0;

        for (; index < length; index++) {
            if (whiteListArray[index] == _user) {
                break;
            }
        }

        require(index < length);

        for (; index < length - 1; index++) {
            whiteListArray[index] = whiteListArray[index + 1];
        }

        whiteListArray.pop();
    }

    function removeUserFromWhiteListMapping(address _user) public {
        whiteListMapping[_user] = false;
    }

    function mint(address _user) public {
       ....
      whiteListMapping[_user] = false;
       ....
    }
}

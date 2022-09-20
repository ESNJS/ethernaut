interface Elevator {
    function goTo(uint _floor) external;
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Building {
    bool public top = true;
    
    function callElevator (address _ElevatorAddr) public {
        Elevator(_ElevatorAddr).goTo(0);
    }

    function isLastFloor(uint) external returns (bool) {
        bool aux = top;
        top = !top;
        return !aux;
    }
}

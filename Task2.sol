// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Task2 {

    // --------------------------------------------------------
    // VARIABLES
    // --------------------------------------------------------

    // Public number variable (default is 0)
    uint public number;

    // Private message variable
    string private message = "Hello GDG AASTU!";

    // Boolean showing if the contract is active
    bool public isActive = true;



    // --------------------------------------------------------
    // FUNCTIONS
    // --------------------------------------------------------

    // Updates the public variable "number"
    function setNumber(uint newNumber) public {
        number = newNumber;
    }

    // Returns the private message
    function getMessage() public view returns (string memory) {
        return message;
    }

    // Returns the sum of two numbers (pure function)
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    // Toggles the boolean isActive
    function toggleActive() public {
        isActive = !isActive;
    }

    // Returns true only if number > 10
    function isNumberBig() public view returns (bool) {
        return number > 10;
    }

}

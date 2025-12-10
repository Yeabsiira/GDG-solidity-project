// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;



contract Week3Task {
    struct Person {
        string name;
        uint256 favoriteNumber;
    }
    
    Person[] public people;
    // Mapping from name → favorite number
    mapping(string => uint256) public nameToFavoriteNumber;

    function addPersonToArray(string memory _name, uint256 _favoriteNumber) public {
        // create a Person struct in memory and push to the array
        Person memory newPerson = Person({ name: _name, favoriteNumber: _favoriteNumber });
        people.push(newPerson);
    }

    function saveToMapping(string memory _name, uint256 _favoriteNumber) public {
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function updateName(uint256 index, string memory newName) public {
        // get reference to the struct in storage and update its name
        Person storage p = people[index];
        p.name = newName;
    }

    function getPerson(uint256 index) public view returns (Person memory) {
        Person memory p = people[index];
        return p;
    }
    
    function nameExists(string memory _name) public view returns (bool) {
        return nameToFavoriteNumber[_name] != 0;
    }

}

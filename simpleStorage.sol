// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract SimpleStorage{
    mapping(uint => Peoples) public idGet;

    uint256 sampleInp;

    struct Peoples{
        string name;
        uint256 number;
    }
    uint256  count;

    function set(uint256 id, uint256 number, string memory _name) public {
        idGet[id] = Peoples(_name, number);
        count++;
    }
    function getById(uint256 id) public view returns (Peoples memory){
        return idGet[id];
    }
    function getTotalPeople() public view returns (Peoples[] memory) {
        Peoples[] memory outData = new Peoples[](count); // Initialize the dynamic array
        for (uint256 i = 0; i < count; i++) { // Changed int to uint256
            outData[i] = idGet[i]; // Assign values to the array elements
        }
        return outData;
    }
    function sampleOverrid(uint256 sampleinp) public virtual {
        sampleInp = sampleinp;
    }
}
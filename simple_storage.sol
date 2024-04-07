// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract SimpleStorage {
    uint256 number = 0;

    People public person = People({favNum:5,name:"nagi"});

    People[] public sampP;

    mapping(string => uint256) public favnum;

    struct People{
        uint256 favNum;
        string name;
    }

    function set(uint256 a) public {
        number = a;
    } 
    function get() public view returns(uint256){
        return number;
    }
    function addPerson(uint256 num, string memory _name) public  {
         People memory Newperson = People({favNum:num, name:_name});
         favnum[_name] = num;
         //  People memory Newperson = People(num, _name); we can use both of them 
         sampP.push(Newperson);
    }
    function get_numby_name(string memory _name) public view returns(uint256){
        return favnum[_name];
    }
}

// data types:
/*
bool
address
int[8,16,32,64,128,256]
string
bytes[1..31]
*/

// public - externaly and internally
// private - internally (only visible currenty contract...!)
// external = can access other contract
// internal = child can access

// view  = means return value function(when you just read or any exsisting values from variables) like( return a)
// pure = same .. but when you are using algorithms like (return 1+1)

// memory = that can be modify
// calldata = that cant be modify



// Mapping


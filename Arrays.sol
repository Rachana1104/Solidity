// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Arrays{
    string[] public Myarray;
    uint[] public uintArray=[1,2,3];
    string[] public stringArray=["Hi","Hello"];
    uint[][] public array2D=[[1,2,3],[4,5,6]];

    function addValue(string memory _value) public{
        stringArray.push(_value);
    }

    function display() public view returns(uint){
        return stringArray.length;
    }
}
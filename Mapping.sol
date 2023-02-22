// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping{
    mapping(uint=>string) public name;
    mapping(uint=>Book) public books;
    mapping(address=>mapping(uint=>Book)) public myBooks;

    struct Book{
        string title;
        string author;
    }

    constructor(){
        name[1]='Rachana';
        name[2]='Sri';
    }

    function addBook(uint _id, string memory _title, string memory _author)public{
        books[_id]=Book(_title, _author);
    }

    function addMyBooks(uint _id, string memory _title, string memory _author)public{
        myBooks[msg.sender][_id]=Book(_title, _author);
    }

}
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract Todo{
    address private owner;
    string [] private allTasks;

    constructor () {
        owner = msg.sender;
    }

    function addTask(string memory _task) public{
        allTasks.push(_task);
    }

    function getTask(uint8 _index) public view returns(string memory){
        return allTasks[_index];
    }

    function getAllTask() public view returns(string [] memory){
        return allTasks;
    }

    function deleteTask(uint _index) public{
        delete allTasks[_index];
    }

    function deleteAllTask() public{
        delete allTasks;
    }

    function getCount() public view returns(uint){
        return allTasks.length;
    }


}

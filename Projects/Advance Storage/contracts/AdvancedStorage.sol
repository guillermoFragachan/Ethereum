pragma solidity ^0.5.0;

contract AdvancedStorage {
    uint [] public ids;
    
    
    //this function passes a new Id to the array
    function add(uint id) public {
        
        //.push method adds a vlalue to the variable/array
        ids.push(id);
        
    }
    
    //this function shows the value  of the Ids
    function get(uint position) view public returns(uint){
        return ids[position];
    }
    
    //this function will add the value of the array
    //it is require to sepcify the allocation in the return
    function getAll() view public returns(uint[] memory){
        return ids;
    }
    
    
    //this function will return the length of the array, with the method .length
    function length() view public returns(uint){
        return ids.length;
        
    }
    }
pragma solidity ^0.5.0;


//this contract create, read, update and delete 
contract Crud{ 
    
    //structs are like objects without methods
    struct User{
        uint id;
        string name;
        
    }
    
    
    User[] public users;

    //tracks the next Id
     uint public nextId =1;
     
     
    //this functions creates a new instance of the struct(User)
    function create(string memory name) public{
        users.push(User(nextId, name));    
        nextId++;
    }
    
    //this function will read the user's instance
    function read(uint id) view public returns(uint, string memory){
            uint i = find(id);
                return(users[i].id ,users[i].name);
            }
        
    
    
    //this function updates the Id
    function update(uint id, string memory name) public{
            uint i = find(id);
            users[i].name = name;
            }
    
    
//this function destroys data from an ID
    function destroy(uint id) public{
        uint i = find(id);
        delete users[i];
    }

    
    
//this function is an interation that finds an ID ( used in update and read)   
    function find(uint id) view internal returns(uint) {
    for(uint i = 0; i < users.length; i++) {
      if(users[i].id == id) {
        return i;
        
            }
        }          
        
        revert('User does not exist!');
        
    }
    
}
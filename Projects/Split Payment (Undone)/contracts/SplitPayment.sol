pragma solidity ^0.5.0;

//this contract will take multiple addresses and send an amount of ehter to each
contract SplitPayment { 
        
        
    address public owner;

    constructor(address _owner) public {
        owner = _owner;
    }
    
    
    
    function send (address payable[] memory to, uint[] memory amount ) public onlyOwner() payable {
        
        
        
        //require is a conditional that evaluates a boolean state with two arguments
        require(to.length == amount.length, 'to and amount arrays must have the same');
        for(uint i =0; i<to.length; i++){
            to[i].transfer(amount[i]);
            
        }
    }    
    
    modifier onlyOwner() {
        require(msg.sender == owner, 'only the owner can transfer');
        _;
    }
    
}
pragma solidity ^0.5.0;


contract EtherWallet{
    
    address payable public owner;
    
    constructor(address payable _owner ) public{
        owner = _owner;
    }
    
    //this function will send ether, payable keyword allows to send ether 
    function deposit() payable public{
        
    }
    
    //payable keyword in this case is differnt, because in this case it specifyins the adress type
    function send(address payable to, uint amount) public{
        if(msg.sender == owner){
             //transfer function take the amount as argument
            to.transfer(amount);
            return;
        }
        
        revert('sender is not allowed');
        
    } 
    
    //this function shows the balance
    function balanceOf() view public returns (uint){
        return address(this).balance;
    }
    
}
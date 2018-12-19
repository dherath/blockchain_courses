pragma solidity ^0.4.25;

contract Transcation {
    
    event SenderLogger (address);
    event ValueLogger (uint);
    
    address private owner;
    
    modifier isOwner {
        require (owner == msg.sender);
        _;
    }
    
    modifier validValue {
        assert (msg.value >= 10 wei);
        _;
    }
    
    constructor () {
        owner = msg.sender;
    }
    
    // fallback function -> can interact with this function wihtout specifying a function
    function () payable isOwner validValue{
        SenderLogger(msg.sender);
        ValueLogger(msg.value);
    }
}

pragma solidity ^0.4.25;

/**
 * interface: Regulator
 * **/
interface Regulator{
    function checkValue(uint amoutn) returns (bool);
    function loan() returns (bool);
}

/**
 * The Bank contract
 */
contract Bank is Regulator{
	uint private value;
	address private owner; // owner of contract

    // error handling ->
    modifier ownerFunc {
        require (owner == msg.sender); // this will be executed befor _
        _; // reference to the actual function
    }
    
	constructor (uint amount) public{
		value = amount;
		owner = msg.sender;
	}

	function deposit (uint amount) ownerFunc{
		value += amount;
	}

	function withdraw (uint amount) ownerFunc{
	    if (checkValue(amount)){
	     		value -= amount;   
	    }
	}

	/**
	* shows the balance in account
	**/
	function balance() public view returns(uint) {
		return value;
	}

	//function load() public view returns(bool); //like abstract function
	function checkValue(uint amount) returns (bool){
	    return value >= amount;
	    //return true;
	}
	
	function loan() returns (bool) {
	    return value > 0;
	}
}


/**
 * The MyFirstContract: my first contract
 */
contract MyFirstContract is Bank{
	string private name;
	uint private age;
	
	constructor (uint startAmount) Bank (startAmount) public {} 

	function setName (string memory newName) public {
		name = newName;
	}
	
	function getName () public view returns(string memory) {
	    return name;
	}

	function setAge (uint newAge) public {
		age = newAge;
	}

	function getAge () public view returns(uint) {
		return age;
	}

	/**function loan() public view returns(bool) {
		return true;
	}**/
	
}


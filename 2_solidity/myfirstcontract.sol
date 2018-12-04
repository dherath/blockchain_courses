pragma solidity ^0.5.1;

/**
 * The Bank contract
 */
contract Bank {
	uint private value;

	constructor (uint amount) public{
		value = amount;
	}

	function deposit (uint amount) public {
		value += amount;
	}

	function withdraw (uint amount) public {
		value -= amount;
	}

	/**
	* shows the balance in account
	**/
	function balance() public view returns(uint) {
		return value;
	}

	//function load() public view returns(bool); //like abstract function
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

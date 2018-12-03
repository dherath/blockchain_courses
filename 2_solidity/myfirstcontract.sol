pragma solidity ^0.4.19;

/**
 * The MyFirstContract: my first contract
 */
contract MyFirstContract {
	string private name;
	uint private age;

	function setName (string newName) public {
		name = newName;
	}
	
	function getName () public view returns(string) {
	    return name;
	}
}


pragma solidity ^0.4.19;

/**
 * The Bank contract
 */
contract Bank {
	uint internal myInternalValue; // can be accessed by MyFirstContract ~protected
}


/**
 * The MyFirstContract: my first contract
 */
contract MyFirstContract is Bank{
	string private name;
	uint private age;

	function setName (string newName) public {
		myInternalValue = 1;
		name = newName;
	}
	
	function getName () public view returns(string) {
	    return name;
	}

	function setAge (uint newAge) public {
		age = newAge;
	}

	function getAge () public view returns(uint) {
		return age;
	}
}

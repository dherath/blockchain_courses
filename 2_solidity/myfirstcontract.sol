pragma solidity ^0.5.1;

/**
 * The Bank contract
 */
contract Bank {
	uint private value;

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

}


/**
 * The MyFirstContract: my first contract
 */
contract MyFirstContract is Bank{
	string private name;
	uint private age;

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
}

pragma solidity ^0.4.25;

contract DataTypes {
    
    bool myBool = true;
    int8 myInt = -128; // -128 to 127
    uint8 myUInt = 255; // 0 to 255
    
    string myString;
    uint8 [] myStringArr;// same as string~
    
    byte myValue;//same as bytes1
    bytes1 myValue1;
    bytes32 myValue2;
    
    //fixed256x1 myFixed = 128;// 255.0
    
    enum Action {ADD, REMOVE, UPDATE}
    
    Action myAction = Action.ADD;
    
    address myAddress;
    
    function ssignAddress () {
        myAddress = msg.sender;// sender -> address of person interacting with the contract
        myAddress.balance;
        myAddress.transfer(10);
    }
    
    //--- Arrays --------------
    
    uint [] myUIntArr = [1,2,3]; // no definitive length
    
    function arrFunc(uint _value) {
        myUIntArr.push(_value);
        // other functionality -> myUIntArr.length, myUIntArr[0]-->0 index element
    }
    
    // for fixed length ->
    uint [10] myfixedArr;
    
    //-- structs --------------
    
    struct Account{
        uint balance;
        uint dailytime;
    }
    
    Account myAccount;
    
    function structF () {
        myAccount.balance = 100;
    }
    
    //--- hash map, dictionary --------------
    
    mapping (address => Account) _accounts;
    
    function () payable{ //not secure
        _accounts[msg.sender].balance += msg.value;
    }
    
    function getBalance() returns (uint) {
        return _accounts[msg.sender].balance;
    }
    
    
}

pragma solidity ^0.4.25;

import "browser/library.sol";

contract test_library {
    using IntExtended for uint; // extends the functionality of the object of uint
    
    function testIncrement (uint _base) returns (uint) {
        return _base.increment();
        // or return IntExtended.increment(_base);
    }
    
    function testDecrement (uint _base) returns (uint) {
        return _base.decrement();
    }
        
    function testIncrementByValue (uint _base, uint _value) returns (uint) {
        return _base.incrementByValue(_value);
        //or return IntExtended.incrementByValue(_base,_value);
    }
    
    function testDecrementByValue (uint _base, uint _value) returns (uint) {
        return _base.decrementByValue(_value);
    }
}

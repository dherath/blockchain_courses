pragma solidity ^0.4.25;

library IntExtended {
    
    function increment (uint _self) returns (uint) {
        return _self+1;
    }
    
    function decrement (uint _self) returns (uint) {
        if (_self > 0) {
            return _self-1;
        }
        return 0;
    }
    
    function incrementByValue (uint _self, uint _value) returns (uint) {
        return _self + _value;
    }
    
    function decrementByValue (uint _self, uint _value) returns (uint) {
        if (_value > _self) {
            return 0;
        }
        return _self - _value;
    }
}

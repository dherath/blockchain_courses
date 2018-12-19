pragma solidity ^0.4.25;

library Strings {
    
    /**
     * concatonates two Strings
     * @param _base : base string
     * @param _value : the string to be appended
     * @return the complete appended string
     **/
    function concat (string _base, string _value) internal returns (string) {
        bytes memory _baseBytes = bytes(_base); // converts _base into bytes
        bytes memory _valueBytes = bytes(_value);// converts _value to bytes
        
        string memory _temp = new string(_baseBytes.length + _valueBytes.length);
        bytes memory _tempBytes = bytes(_temp);
        
        uint i;
        uint j;
        
        for(i=0;i<_baseBytes.length;i++) { //appending _baseBytes
            _tempBytes[j] = _baseBytes[i];
            j++;
        }
        
        for(i=0;i<_valueBytes.length;i++) { //appending _valueBytes
            _tempBytes[j] = _valueBytes[i];
            j++;
        }
        return string(_tempBytes);
    }
    
    /**
     * finds the position of _value in _base, returns negative value if no match
     * @param _base : the base string
     * @param _value : the char value to look for
     * @return the position
     **/
    function strpos (string _base, string _value) internal returns (int) {
        bytes memory _baseBytes = bytes(_base); // converts _base into bytes
        bytes memory _valueBytes = bytes(_value);// converts _value to bytes
        
        assert(_valueBytes.length == 1);
        
        for (uint i=0;i<_baseBytes.length;i++) {
            if (_baseBytes[i] == _valueBytes[0]) {
                return int(i);
            }
        }
        
        return -1;
    }
    
    
}

//--- test contract ---

contract testStrings {
    
    using Strings for string;
    
    function testconcat(string _base) returns (string) {
        return _base.concat("_suffix");
    }
    
    function teststrpos(string _base) returns (int) {
        return _base.strpos("t");
    }
}
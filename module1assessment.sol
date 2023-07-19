// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FunctionErrorHandling {

    function requireexample(uint x) public pure returns (bool){
        require(x%2==0,"Number must be Even.");
        return true;
    }

    function assertexample(uint x, uint y) public pure returns(bool){
        assert(x+y<50);
        return true;
    }

    function revertexample(uint x) public pure returns(bool){ 
        if(x<=10){
            revert("Number must be greater than 10.");
        }
        return true;
    }
}

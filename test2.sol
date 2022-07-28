//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Customerror{
    
    

    error customerror( address caller, uint i);
    function custom (uint i) public view{
        if (i>10){
            revert customerror(msg.sender, i);
        }
    }
}
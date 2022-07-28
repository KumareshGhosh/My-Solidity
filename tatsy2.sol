//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Investors{
    uint fortune;

    constructor () payable public {
        fortune = msg.value;
    }
    address payable[] investorWallets;
    mapping (address => uint) investors;

    function payInvestors(address payable wallet , uint amount ) public {
        investorWallets.push(wallet);
        investors[wallet]=amount;
       
        }
    
    function payout() private {
        for (uint i = 0 ; i< investorWallets.length ; i++){
            investorWallets[i].transfer(investors[investorWallets[i]]);
        }
    }
    function makepayment() payable public  {
        payout();
    }
    function checklength() public view returns (uint){
        return investorWallets.length;
    }
   
}



// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract Functions{
    uint a = 5;
    uint b;
    uint c;
    uint d;

    function sum(uint _a) public view returns(uint){
        _a = a;
        return a;
    }

    function sum(uint _a, uint _b) public pure returns(uint){  
        return _a + _b;
    }

    function pay(address payable addr) public payable {
        (bool sent, bytes memory data) = addr.call{value: 5 ether} ("Sent Successfully");
        require (sent, "error sending ETH!!");
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract FundMe{

    uint256 public miniumUSD = 50;

    function fund() public payable {
        // want to be able to set minimum fund 
        // How to send ETH to this contract ?
        // Contracts also can contain the FUNDS
        // msg.value; // to get the value somebody send
        require(msg.value >= miniumUSD, "Did't send Enough! Transaction want's atleast 1 ETH..!"); // 1e18 == 1*10**18 == 1000000000000000000 == 1ETH

        // what is reverting ?
        // undo any before, and send remaining gas back

    }

}
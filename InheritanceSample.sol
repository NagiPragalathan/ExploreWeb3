// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.2 < 0.9.0;

import "./simpleStorage.sol";

contract externalStorage is SimpleStorage{
    function sampleOverrid(uint256 inp) public override {
        sampleInp = sampleInp + inp;
    }
}

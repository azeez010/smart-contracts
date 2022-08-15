// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./Ownable.sol";

abstract contract Airdrop is Ownable{
    // struct AirdropKeeper {
    //     bool isLocked;
    //     uint256 amount
    // }
    // AirdropKeeper
    
    bool internal airdropUnlock = false;
    bool internal airdropStatus = true;
    uint256 internal airdropAmount;

    mapping(address => bool ) internal _airdrop_table;
    // Empty internal constructor, to prevent people from mistakenly deploying
    // an instance of this contract, which should be used via inheritance.
    // constructor() internal {}

    function isAirdropActive() public view returns(bool){
        return airdropStatus;
    }

    function setAirdropStatus(bool _value) public onlyOwner {
        airdropStatus = _value;
    }

    function getAirdropAmount() public view returns(uint256){
        return airdropAmount;
    }

    function getairdropUnlock() public view returns(bool){
        return airdropUnlock;
    }

    // Setting this to false means all the tokens gained through airdrop can now be spent
    function setairdropUnlock(bool _value) public onlyOwner {
        airdropUnlock = _value;
    }
}
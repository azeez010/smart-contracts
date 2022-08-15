// SPDX-License-Identifier: MIT
/*
Welcome to MetaFora
> 100%Unmintable contract
> 100%Unruggable contract
> Website:https://testflora.xyz
> Telegram:https://t.me/metafora
*/

pragma solidity >=0.4.22 <0.9.0;

/**
 * @dev Interface of the SellToken standard as defined in the EIP.
 * From https://github.com/OpenZeppelin/openzeppelin-contracts
 */
interface ILockContract {
  /**
   * @dev Returns the amount of tokens in existence.
   */
  function lockedAmount(address _address) external view returns (uint256);
  function updateStakeAirdrop(address _user, uint256 stakeAmount) external;
}
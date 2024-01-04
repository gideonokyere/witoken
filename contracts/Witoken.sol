// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

contract Witoken is Initializable, ERC20Upgradeable{

 address public owner;

  function Initialize(uint256 initialSupply) public initializer {
      owner = msg.sender;
    __ERC20_init("Witoken","WIT");
    _mint(owner,initialSupply);
  }

  /**
   * Only the owner of the token can approve an account to spend a token
   * @param _spender - the account allow to spend some token on behave of owner
   * @param _value - the amount allow to spend
   */
  function approve (address _spender, uint256 _value) public override returns (bool) {
    require(msg.sender == owner,"Only the owner can call this function");
    super.approve(_spender,_value);
    return true;
  }

}
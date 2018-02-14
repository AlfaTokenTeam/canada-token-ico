pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract CanadaToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function CanadaToken(address _owner)  UpgradeableToken(_owner) {
    name = "CanadaToken";
    symbol = "CAT";
    totalSupply = 50000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}
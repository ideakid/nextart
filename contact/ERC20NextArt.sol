// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "../contracts/access/Ownable.sol";
import "../contracts/token/ERC20/ERC20.sol";

contract NEXTART is ERC20, Ownable {
    string constant tokenName = "next art";
    string constant tokenSymbol = "NEXTs";
    uint8 constant tokenDecimals = 18;
    uint _totalSupply = 1000000000000000000;
    uint public basePercent = 100;
    uint public _burnStopAmount;
    uint public _lastTokenSupply;
    
    constructor() public ERC20(tokenName,tokenSymbol){
        _mint(msg.sender, _totalSupply);
        _burnStopAmount = 0;
        transferOwnership(msg.sender);

    }

}
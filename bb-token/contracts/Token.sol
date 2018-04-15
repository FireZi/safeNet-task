pragma solidity ^0.4.21;

import "./BbToken.sol";

contract Token is BbToken {
    function Token(address _user) public
    BbToken() {
        balances[_user] = 10000 * BASE;
    }
}
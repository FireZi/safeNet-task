pragma solidity ^0.4.21;

import "./StandardToken.sol";

contract BbToken is StandardToken {
	string public name = "Bill Boadrd Token";
	string public symbol = "BBT";

	uint BASE = 1000000000000000000;

	function BbToken() public {
		totalSupply = 10000000 * BASE;
	}


	uint adCost = BASE;

	event BillBoardUpdated(string ad, address buyer);

	string public billBoard;
	address public lastBuyer;


	function payForAd (string _ad) public {
		assert(balanceOf(msg.sender) > adCost);

		balances[msg.sender] -= adCost;
		totalSupply -= adCost;
		billBoard = _ad;
		lastBuyer = msg.sender;
		emit BillBoardUpdated(_ad, msg.sender);
	}
}
pragma solidity ^0.4.18;

contract Wrestling {
	// addresses ethereum for wrestlers
	address public wrestler1;
	address public wrestler2;

	// basic vars
	bool public wrestler1Played;
	bool public wrestler2Played;

	uint private wrestler1Deposit;
	uint private wrestler2Deposit;

	bool public gameFinished;
	address public theWinner;
	uint gains;

	// events for gamep]laying: register, round, ending
	event WrestlingStartsEvent(address wrestler1, address wrestler2);
	event EndOfRoundEvent(uint wrestler1Deposit, uint wrestler2Deposit);
	event EndOfWrestlingEvent(address winner, uint gains);

	function Wrestling() public {
		wrestler1 = msg.sender;
	}
}
examples
example03

^ 'pragma solidity ^ 0.4 .2;
contract owned {
	address public owner;

	function owned() public {
		owner = msg.sender;
	}
}'
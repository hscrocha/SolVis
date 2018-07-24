examples
example04

^ 'pragma solidity ^ 0.4 .2;
contract Owned {
    address public owner;
    event OwnershipTransferred(address indexed _from, address indexed _to);

    modifier onlyOwner {
        if (msg.sender != owner) throw;
        _;
    }
	
	   function transferOwnership(address newOwner) onlyOwner {
        OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

		function transferOwnership2(address newOwner) onlyOwner {
        OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
}
'
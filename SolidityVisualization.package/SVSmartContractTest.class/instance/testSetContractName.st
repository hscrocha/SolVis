tests
testSetContractName
	| c |
	c := SVSmartContract new.
	self should: [ c contractName: 123 ] raise: Exception
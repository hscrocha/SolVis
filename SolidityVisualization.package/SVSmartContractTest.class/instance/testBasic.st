tests
testBasic
	| c |
	c := SVSmartContract new.
	self deny: c hasParent.
	self assert: c hasNoParent.
	self assert: c numberOfParents equals: 0.
	self assert: c numberOfVariables equals: 0.
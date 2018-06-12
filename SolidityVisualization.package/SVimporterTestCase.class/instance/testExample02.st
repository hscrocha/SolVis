tests
testExample02

	| model owned |
	i importFromString: self example02.
	model := i model.
	self assert: model numberOfContracts equals: 4. 
	
	owned := model contractNamed: 'owned'.
	self assert: owned contractName equals: 'owned'.
	self assert: owned numberOfFunctions equals: 2.
	self assert: owned functionNames equals: #('owned' 'transferOwnership')
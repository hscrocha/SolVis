tests
testExample02Parent

	| model testContract |
	i importFromString: self example02.
	model := i model. 
	
	self deny: (model contractNamed: 'owned') hasParent.
	self assert: (model contractNamed: 'owned') hasNoParent.
	
	testContract := model contractNamed: 'Test'.	
	self assert: testContract contractName equals: 'Test'.
	self assert: testContract numberOfFunctions equals: 13.
	
	self deny: testContract hasParent.
	self assert: testContract parentNames equals: #('owned' 'token').
	model resolveDependencies.
	self assert: testContract hasParent.
	
	self assert: testContract numberOfParents equals: 2.
	self assert: testContract parentNames equals: #('owned' 'token').
	
	self assert: testContract parents equals: (Array with: (model contractNamed: 'owned') with: (model contractNamed: 'token')).
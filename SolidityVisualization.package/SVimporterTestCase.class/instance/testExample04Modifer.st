tests
testExample04Modifer

	| model c f m f2 |
	i importFromString: self example04.
	model := i model. 
	model resolveDependencies.
	
	c := model contractNamed: 'Owned'.
	self assert: c numberOfModifiers equals: 1.

	f := c functionNamed: 'transferOwnership'.
	self assert: f functionName equals: 'transferOwnership'.
	self assert: f modifierNames size equals: 1.
	self assert: f numberOfModifiers equals: 1.	
	self assert: f modifiers anyOne equals: c modifiers anyOne.
	
	m := c modifiers anyOne. 
	self assert: m modifierName equals: 'onlyOwner'.
	self assert: (m appliedFunctions includes: f).
	
	f2 := c functionNamed: 'transferOwnership2'.
	self assert: (m appliedFunctions includes: f2).
	self assert: m modifierName equals: 'onlyOwner'
	
	
tests
testExample02Variable

	| model c v c2 v2 v3 v4 |
	i importFromString: self example02.
	model := i model. 
	
	c := model contractNamed: 'owned'.
	self assert: c numberOfVariables equals: 1.

	v := c variables first.
	self assert: v variableName equals: 'owner'.
	self assert: v variableTypename equals: 'address'.
	
	c2 := model contractNamed: 'token'.
	self assert: c2 numberOfVariables equals: 6.
	self assert: c2 variables size equals: 6.
	v2 := c2 variables first.
	self assert: v2 variableName equals: 'name'.
	self assert: v2 variableTypename equals: 'string'.
	
	v3 := c2 variables third.
	self assert: v3 variableName equals: 'decimals'.
	self assert: v3 variableTypename equals: 'uint8'.

	v4 := c2 variables fifth.
	self assert: v4 variableName equals: 'balanceOf'.
	self assert: v4 variableTypename equals: 'mapping'.

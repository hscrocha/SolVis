tests
testExample03FunctionAccessingVariable

	| model c f |
	i importFromString: self example03.
	model := i model. 
	
	c := model contractNamed: 'owned'.
	f := c functionNamed: 'owned'.
	self assert: f functionName equals: 'owned'.
	
	self assert: f numberOfWrittenVariables equals: 1.
	self assert: f variablesWritten anyOne variableName equals: 'owner'.
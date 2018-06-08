tests
testAddingContract

	| sm f |
	i importFromString: self example01.
	self assert: i model numberOfContracts equals: 1.
	self assert: i model smartContracts size equals: 1.
	
	sm := i model smartContracts first.
	self assert: sm contractName equals: 'shapeCalculator'.
	self assert: sm numberOfFunctions equals: 1.

	f := sm functions first.
	self assert: f functionName equals: 'rectangle'.
"	self assert: f numberOfLinesOfCode equals: 2."
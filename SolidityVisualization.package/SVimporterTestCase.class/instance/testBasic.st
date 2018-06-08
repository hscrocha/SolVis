tests
testBasic
	| m |
	m := i model.
	self assert: m numberOfContracts equals: 0
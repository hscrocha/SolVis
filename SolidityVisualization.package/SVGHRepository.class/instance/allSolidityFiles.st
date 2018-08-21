accessing
allSolidityFiles
	"Return all the Solidity files found in the path"
	| fr |
	self assert: [ self path notNil ] description: 'Should provide a valid path'.
	fr := self path asFileReference.
	^ fr allChildren select: [ :f | f extension = 'sol' ]
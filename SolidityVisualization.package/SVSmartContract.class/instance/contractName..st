accessing
contractName: aNameAsString
	"Set the name of the smart contract"
	self assert: [ aNameAsString notNil ].
	self assert: [ aNameAsString isByteString ].
	
	contractName := aNameAsString
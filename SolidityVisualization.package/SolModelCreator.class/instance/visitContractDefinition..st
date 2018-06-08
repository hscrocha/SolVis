generated
visitContractDefinition: aContractDefinition
	| children answer |
	contract := SVSmartContract new.
	children := aContractDefinition sortedChildren.
	contract contractName: children first value value.
	
	answer := self visitRootSourceSol: aContractDefinition.
	model addSmartContract: contract.
	
	^ answer
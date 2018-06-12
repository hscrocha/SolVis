generated
visitContractDefinition: aContractDefinition
	| children answer parentNames |
	contract := SVSmartContract new.
	children := aContractDefinition sortedChildren.
	contract contractName: children first value value.
	
	parentNames := aContractDefinition inheritances collect: [ :inheritanceNode | inheritanceNode behaviour value value value ].
	contract parentNames: parentNames copy asArray.
	answer := self visitRootSourceSol: aContractDefinition.
	model addSmartContract: contract.
	
	^ answer
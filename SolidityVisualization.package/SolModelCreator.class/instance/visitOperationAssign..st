generated
visitOperationAssign: anOperationAssign
	| currentFunction variableName variable |
	contract functions notEmpty
		ifTrue: [ currentFunction := contract functions last.
			anOperationAssign lhs class == SolTermNode
				ifTrue: [ variableName := anOperationAssign lhs factor value value.

					"Check if the variable we are writting in is not a local variable (i.e., if the contract defined the variable)"
					(contract hasVariableNamed: variableName)
						ifTrue: [ variable := contract variableNamed: variableName.
							variable addFunctionWriting: currentFunction.
							currentFunction addWrittenVariable: variable ] ] ].
	^ super visitOperationAssign: anOperationAssign
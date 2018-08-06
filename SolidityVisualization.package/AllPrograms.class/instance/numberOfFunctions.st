public - metrics
numberOfFunctions
	^ (programs collect: [ :p | p model numberOfFunctions ]) sum
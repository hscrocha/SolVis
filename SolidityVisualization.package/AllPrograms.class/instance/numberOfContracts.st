public - metrics
numberOfContracts
	^ (programs collect: [ :p | p model numberOfContracts ]) sum
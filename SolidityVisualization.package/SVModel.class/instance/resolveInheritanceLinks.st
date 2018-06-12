private - dependencies
resolveInheritanceLinks
	"Private - Method
	Solve the inheritance links"
	| d parentContracts |
	d := Dictionary new.
	smartContracts do: [ :sc | d at: sc contractName put: sc ].
	smartContracts do: [ :sc |
		parentContracts := sc parentNames select: [ :aName | d includesKey: aName ] thenCollect: [ :aName | d at: aName ].
		sc parents: parentContracts
	]
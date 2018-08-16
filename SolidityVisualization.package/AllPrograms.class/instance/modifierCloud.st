public - visualization
modifierCloud

	| b |
	b := RTNameCloud new.
	b addObjects: programs description: [ :p | ' ' join: (p model allModifiers collect: #modifierName) ].
	^ b
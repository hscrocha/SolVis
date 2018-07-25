public - visualization
visualizeFunctionsAndModifiers
	| b |
	b := RTMondrian new.
	b shape box withTextAbove: #functionName.
	b
		nodes: (self functions reverseSortedAs: #numberOfModifiers) 
		forEach: [ :f | 
			b nodes: f modifiers.
			b layout grid ].
	b normalizer
		objects: self modifiers;
		distinctColorUsing: #yourself.
	b layout flow.
	^ b
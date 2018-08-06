public - visualization
descriptionAsString
	| str |
	str := WriteStream on: String new.
	str nextPutAll: 'Number of programs: '.
	str nextPutAll: programs size asString; cr.
	
	str nextPutAll: 'Number of contracts: '.
	str nextPutAll: self numberOfContracts asString; cr.
	
	str nextPutAll: 'Number of functions: '.
	str nextPutAll: self numberOfFunctions asString; cr.
	^ str contents
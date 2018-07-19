printing
printOn: str
	str nextPutAll: '<V '.
	str nextPutAll: self variableName.
	str nextPut: $>
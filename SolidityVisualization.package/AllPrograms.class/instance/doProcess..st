public
doProcess: aFileReference
	| program readStream content |
	i resetModel.
	readStream := aFileReference readStream.
	content := readStream contents.
	i importFromString: content.
	
	program := SVProgram new.
	program model: i model.
	program fileReference: aFileReference.
	program numberOfLinesOfCode: content lines size.
	readStream close.
	
	programs add: program
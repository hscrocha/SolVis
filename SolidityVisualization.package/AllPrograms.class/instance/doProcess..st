public
doProcess: aFileReference
	| program readStream |
	i resetModel.
	readStream := aFileReference readStream.
	i importFrom: readStream.
	
	program := SVProgram new.
	program model: i model.
	program fileReference: aFileReference.
	program numberOfLinesOfCode: readStream contents numberOfLinesOfCode.
	readStream close.
	
	programs add: program
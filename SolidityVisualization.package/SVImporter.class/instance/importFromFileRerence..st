public - importing
importFromFileRerence: aFileReference
	"Import the smart contracts found in the file reference"
	| str newSmartContracts |
	str := aFileReference readStream.
	[ newSmartContracts := self importFrom: str.
	newSmartContracts do: [ :sm | sm fileReference: aFileReference ] ]
		ensure: [ str close ]
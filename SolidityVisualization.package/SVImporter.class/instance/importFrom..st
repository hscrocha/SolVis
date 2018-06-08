as yet unclassified
importFrom: aStream
	| ast v |
	ast := SolidityParser parseStream: aStream.
	v := SolModelCreator new.
	v model: model.
	ast acceptVisitor: v.

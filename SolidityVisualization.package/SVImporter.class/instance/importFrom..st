public - importing
importFrom: aStream
	| ast v |
	ast := SolidityParser parseStream: aStream.
	v := SolModelCreator new.
	v model: model.
	ast acceptVisitor: v.

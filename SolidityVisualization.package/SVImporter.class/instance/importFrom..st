public - importing
importFrom: aStream
	"Return the new smart contracts"
	| ast v scs |
	scs := (self model smartContracts) copy.
	ast := SolidityParser parse: aStream contents.
	v := SolModelCreator new.
	v model: model.
	ast acceptVisitor: v.
	^ self model smartContracts copyWithoutAll: scs

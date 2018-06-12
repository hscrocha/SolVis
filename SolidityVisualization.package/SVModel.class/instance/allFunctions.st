accessing
allFunctions
	"Return all the functions, of all the smartcontracted added to the model"
	^ self smartContracts flatCollect: #functions
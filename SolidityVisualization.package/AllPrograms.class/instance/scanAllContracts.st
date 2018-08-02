public
scanAllContracts
	<script: 'self new scanAllContracts'>

	| children |
	children := self defaultPath asFileReference children.
	programs := OrderedCollection new.
	
	i := SVImporter new.
	children do: [ :fileReference |
		self doProcess: fileReference.
		 ] displayingProgress: [:aFile | ] every: 0.
	
	self inspect 
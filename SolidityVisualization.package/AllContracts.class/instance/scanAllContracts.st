public
scanAllContracts
	<script: 'self new scanAllContracts'>

	| children |
	children := self defaultPath asFileReference children.
	numberOfContracts := children size.
	
	i := SVImporter new.
	children do: [ :fileReference |
		| readStream |
		readStream := fileReference readStream
		self doProcess: readStream.
		readStream close
		 ].
	
	self inspect 
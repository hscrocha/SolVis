baseline
baseline: spec
	<baseline>
	spec for: #common do: [ spec
		baseline: 'SmaCC' with: [ spec
			repository: 'github://ThierryGoubier/SmaCC';
			loads: 'SmaCC-GLR-Runtime' ];

		package: 'SmaCC-Solidity'
		"we could say that SmaccSolidity depends on Smacc-Runtime but I do not know how to say it"
	]

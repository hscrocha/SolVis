accessing
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Set database path')
			order: 0.002; 
			parent: self projectName asSymbol;
			label: 'Set database path';
			action: [ 
				UIManager default alert: 'You will now select the path of the local clone of https://github.com/sbragagnolo/ContractsDB'.
				directory := UIManager default chooseDirectory ]
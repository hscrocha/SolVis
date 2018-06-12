accessing
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Open database')
			order: 0.002; 
			parent: self projectName asSymbol;
			label: 'Open database';
			action: [
				SVSetDatabasePath directory 
					ifNil: [ UIManager default alert: 'You should first set the path' ]
					ifNotNil: [ SVSetDatabasePath directory inspect ]
				]
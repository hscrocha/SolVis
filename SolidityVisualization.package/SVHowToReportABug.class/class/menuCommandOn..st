accessing
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'How to report a bug')
			order: 0.002; 
			parent: self projectName asSymbol;
			label: 'How To report a bug';
			action: [ WebBrowser openOn: 'https://github.com/hscrocha/SolVis'  ]
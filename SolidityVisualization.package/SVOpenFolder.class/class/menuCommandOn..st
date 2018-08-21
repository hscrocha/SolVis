accessing
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Open Folder')
			order: 0.002; 
			parent: self projectName asSymbol;
			label: 'Open Folder';
			action: [
				| directory |
				directory := UIManager default chooseDirectory.
				SVGHRepository new path: directory pathString.
				]
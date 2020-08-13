Class {
	#name : #BaselineOfSoup,
	#superclass : #BaselineOf,
	#category : #BaselineOfSoup
}

{ #category : #baselines }
BaselineOfSoup >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec baseline: 'XMLParser' with: [
				spec repository: 'github://pharo-contributions/XML-XMLParser:master'].
			spec 
				package: 'Soup-Core';
				package: 'Soup-Zinc';
				package: 'Soup-XPath';
				package: 'Soup-Help';
				package: 'Soup-Tests-Core';
				package: #'Soup-Tools'.
			spec group: 'default' with: #('ALL') ].
]

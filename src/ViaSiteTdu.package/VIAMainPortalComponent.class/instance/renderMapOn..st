rendering
renderMapOn: html
	self renderPart: 'map' on: html with: [
		html ukContainer: swissmap.
		html ukContainer: [
			html ukGrid class: 'uk-child-width-1-1 uk-child-width-1-2@m'; with: [ 
				self renderMultiLanguage: 'portal:map:one' on: html.
				self renderMultiLanguage: 'portal:map:two' on: html.
	]]]
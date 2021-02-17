rendering
renderPatronatOn: html
	self renderPart: 'patronage' on: html with: [
		html ukContainer: [
			html ukGrid class: 'uk-child-width-1-1 uk-child-width-1-2@m'; with: [ 
				self renderMultiLanguage: 'portal:patronage:one' on: html.
				self renderMultiLanguage: 'portal:patronage:two' on: html.
			]
	]]
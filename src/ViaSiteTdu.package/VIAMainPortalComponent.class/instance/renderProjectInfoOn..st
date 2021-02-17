rendering
renderProjectInfoOn: html
	self renderPart: 'projectInfo' on: html with: [
		html ukContainer: [
			html ukGrid class: 'uk-child-width-1-1 uk-child-width-1-2@m'; with: [ 
				html div: [
					html image url: '/site/images/portal/projekt_map.svg'.
					self renderMultiLanguage: 'portal:projectInfo:one' on: html.
				].
				self renderMultiLanguage: 'portal:projectInfo:two' on: html.
			]
	]]
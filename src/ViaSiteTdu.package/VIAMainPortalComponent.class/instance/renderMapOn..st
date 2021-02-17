rendering
renderMapOn: html
	self renderPart: 'map' on: html with: [
		html ukContainer: [
			html ukGrid class: 'uk-child-width-1-1 uk-child-width-1-2@m'; with: [ 
				html div: [
					html image url: '/site/images/portal/switzerland_region_colors.svg'.
					self renderMultiLanguage: 'portal:map:one' on: html.
				].
				self renderMultiLanguage: 'portal:map:two' on: html.
	]]]
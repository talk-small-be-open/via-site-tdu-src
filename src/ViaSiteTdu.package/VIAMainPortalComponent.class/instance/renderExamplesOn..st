rendering
renderExamplesOn: html
	self renderPart: 'examples' on: html with: [

		featuredModules do: [:all |
			html ukContainer class: 'uk-margin'; with: [
				html div a: 'uk-slider'; with: [
					html div class: 'uk-position-relative'; with: [
						html unorderedList class: 'uk-slider-items uk-child-width-1-2 uk-child-width-1-3@s uk-child-width-1-4@m uk-grid uk-grid-small'; with: [
							all do: [:each |
								html listItem: [
									moduleCardRenderer renderModule: each on: html]]].
							html anchor url: '#';
								class: 'uk-position-center-left';
								a: 'uk-slidenav-previous';
								a: 'uk-slider-item' p: 'previous'.
							html anchor url: '#';
								class: 'uk-position-center-right';
								a: 'uk-slidenav-next';
								a: 'uk-slider-item' p: 'next' ].
				].
		]].

		html ukContainer: [
			html ukGrid class: 'uk-child-width-1-1 uk-child-width-1-2@m'; with: [ 
				self renderMultiLanguage: 'portal:examples:one' on: html.
				self renderMultiLanguage: 'portal:examples:two' on: html.
		]]
	]
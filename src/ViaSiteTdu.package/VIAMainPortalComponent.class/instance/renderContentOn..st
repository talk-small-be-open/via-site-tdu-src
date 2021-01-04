as yet unclassified
renderContentOn: html
	html ukContainer class: 'uk-margin'; with: [
		html div class: 'uk-margin'; with: [
			html strong: '321-CLIP'.
			self languagesDo: [ :each |
				html div: [ html t: 'mainPortal:claim' l: each ].
		]].

		html ukGrid class: 'uk-margin uk-grid-small uk-child-width-1-1 uk-child-width-1-3@s'; with: [
			self websitesDo: [ :each |
				html div: [
					html anchor
						url: each url;
						with: [
							html div
								class: ('website-', each code);
								with: [
									html div class: 'logoContainer'; with: [
										html logoImageFor: each ]].
							html span: each displayName].
					html break.]]].
		
	].

	self renderFooterOn: html.

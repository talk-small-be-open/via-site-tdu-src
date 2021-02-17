rendering
renderMultiLanguage: aKey on: html
	html div class: 'multiLanguageSection'; with: [
		self languagesDo: [ :each |
			html div
				class: 'multiLanguagePart';
				class: each;
				with: [ html t: aKey l: each ]
	]].
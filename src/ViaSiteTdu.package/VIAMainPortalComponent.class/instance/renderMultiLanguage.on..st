rendering
renderMultiLanguage: aKey on: html
	html div class: 'multiLanguageSection'; with: [
		self languagesDo: [ :each |
			(self db hasNonBlankUiText: aKey language: each) ifTrue: [
				html div
					class: 'multiLanguagePart';
					class: each;
					with: [
						html span class: 'languageIdicator'; with: (self languageCharFor: each).
						html t: aKey l: each ]
		]]].
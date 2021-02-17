rendering
renderPart: aPartName on: html with: aBlock
	html div class: 'part'; class: aPartName; id: aPartName; with: [ 
		self renderWaveBorderOn: html.
		html div class: 'body'; with: [
			html ukContainer: [
				html heading with: [
					| key |
					key := 'portal:', aPartName, ':title'.
					self languagesDo: [ :each |
						html span
							class: each;
							with: [ html t: key l: each ]]]].
			html render: aBlock]]
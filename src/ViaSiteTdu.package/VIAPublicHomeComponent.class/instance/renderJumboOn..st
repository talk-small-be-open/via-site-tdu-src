rendering
renderJumboOn: html
	
	html div class: 'jumbo tdu-fixed-background-a'; with: [
		html div class: 'uk-container tdu-margin-large-vertical uk-text-center '; with: [
			html div class: 'callForAction'; with: [
				(html logoImageFor: self website).
				html div class: 'messageBox'; with: [
					html pT: 'publicHome:callForAction:claim'.

					html anchor
						class: 'actionButton';
						callback: [ self app openLoginDialog ];
						with: [
							html iconLogin; space.
							html t: 'publicHome:loginHere' ].
					
				].
				self website renderSupporterLogos: 'inv' on: html.
			].
		].
			
		html div class: 'waveBorder'.
	]
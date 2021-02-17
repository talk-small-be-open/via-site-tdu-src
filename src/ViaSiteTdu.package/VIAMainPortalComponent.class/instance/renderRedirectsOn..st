as yet unclassified
renderRedirectsOn: html
	html div class: 'part redirects'; with: [
		html div class: 'body'; with: [
			html ukContainer: [

				self websitesDo: [ :each |
					html div
						class: ('website-', each code);
						with: [

							html div class: 'callForAction'; with: [
								html logoImageFor: each.
								html div class: 'messageBox'; with: [
									html t: 'portal:claim' l: each language.

									html anchor
										class: 'actionButton';
										url: each url;
										with: [
											html fasIcon: 'arrow-right'; space.
											html text: (each code allButFirst: 3).
											html text: '!'.
										]].
								each renderSupporterLogosOn: html.
							
				]]]]]]
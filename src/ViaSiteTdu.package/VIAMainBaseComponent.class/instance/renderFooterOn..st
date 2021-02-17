rendering
renderFooterOn: html
	html div class: 'footerContainer'; with: [
		html div class: 'waveBorder'; with: [
			html div class: 'upper'.
			html div class: 'lower'.
		].
		html div class: 'footer'; with: [
			html ukContainer: [
				html div class: ''; with: [
					self website renderFooterContentOn: html ].

					"html div class: 'uk-width-expand@m'."

				html div class: 'footnotes'; with: [
					html anchor
						class: 'portalLink';
						url: 'https://321-clip.ch';
						target: '_blank';
						with: [
							html span sT: '321via:portal:link'.
							html image
								url: '/site/images/logo_321clip.svg';
								class: 'clipLogo' ].
"					html ifT: '321via:footnotes' then: [ :yield |
						yield value.
						html text: ' | '.
					]."
					html anchor
						callback: [self openDisclaimer];
						t: '321via:disclaimer:link'.
					html text: ' | '.
					html anchor
						callback: [self openImprint];
						t: '321via:imprint:link'.
					self ifAdmin: [
						html text: ' | '.
						html anchor
							callback: [self switchToUser];
							with: 'su'].
					self session hasBackgroundAdminUser ifTrue: [
						html text: ' | '.
						html anchor
							callback: [self switchBackToAdmin];
							with: 'bck'.
					]
				]]]].
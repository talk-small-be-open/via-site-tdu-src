rendering
renderFooterOn: html
	html div class: 'footer'; with: [
		html image
			class: 'supporterLogo';
			url: '/site/images/BAK.png'.
		html image
			class: 'supporterLogo';
			url: '/site/images/RSI.svg'.
		html image
			class: 'supporterLogo';
			url: '/site/images/RTS.svg'.
		html image
			class: 'supporterLogo';
			url: '/site/images/SRF.svg'.
		html div class: 'uk-margin footnotes'; with: [
			html ifT: '321via:footnotes' then: [:yield |
				yield value.
				html text: ' | ' ].
			html anchor
				callback: [self openDisclaimer];
				t: '321via:disclaimer:link'.
			html text: ' | '.
			html anchor
				callback: [self openImprint];
				t: '321via:imprint:link'.
		]].
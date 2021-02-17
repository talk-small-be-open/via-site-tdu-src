rendering
renderFooterOn: html
	self renderPart: 'footer' on: html with: [
		html ukContainer class: 'logos'; with: [
			html ukGrid: [
				html div
					class: 'uk-width-1-1 uk-width-2-5@m';
					with: [
						html image
							class: 'supporterLogo bak';
							url: '/site/images/portal/BAK.png'].
				html div
					class: 'uk-width-1-1 uk-width-1-5@m';
					with: [
						html image
							class: 'supporterLogo tv';
							url: '/site/images/RSI.svg'].
				html div
					class: 'uk-width-1-1 uk-width-1-5@m';
					with: [
						html image
							class: 'supporterLogo tv';
							url: '/site/images/RTS.svg'].
				html div
					class: 'uk-width-1-1 uk-width-1-5@m';
					with: [
						html image
							class: 'supporterLogo tv';
							url: '/site/images/SRF.svg']].
		].
		html ukContainer class: 'footnotes'; with: [
			self renderMultiLanguage: 'portal:footnotes' on: html
		]]
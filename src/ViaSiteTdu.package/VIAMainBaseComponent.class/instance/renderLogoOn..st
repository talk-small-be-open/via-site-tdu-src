rendering
renderLogoOn: html
	html anchor class: 'uk-logo'; callback: [self gotoHome]; with: [
		html image
			class: 'tdu-logo';
			url: ('/site/images/', self website logoFilename).
"			height: 'auto';
			width: '120px'"
		]
rendering
renderLogoOn: html
	html anchor class: 'uk-logo'; callback: [self gotoHome]; with: [
		(html logoImageFor: self website)
			class: 'tdu-logo'.
		]
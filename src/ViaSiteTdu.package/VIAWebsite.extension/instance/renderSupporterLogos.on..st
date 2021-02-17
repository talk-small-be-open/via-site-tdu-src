*ViaSiteTdu
renderSupporterLogos: aVariantString on: html
	| postfix |
	postfix := ''.
	aVariantString ifNotBlank: [ postfix := '_', aVariantString ].
	self supporterNames do: [ :each |
		html image
			class: 'supporterLogo';
			url: '/site/images/', each, postfix, '.svg']
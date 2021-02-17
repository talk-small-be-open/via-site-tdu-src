as yet unclassified
renderContentOn: html
	self renderHeaderOn: html.
	self renderRedirectsOn: html.
	self renderProjectInfoOn: html.
	self renderExamplesOn: html.
	self renderMapOn: html.
	self renderPatronatOn: html.
	self renderFooterOn: html.
	self renderSvgDefsOn: html.
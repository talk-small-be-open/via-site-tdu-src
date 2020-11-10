rendering
renderContentOn: html
	self renderHeaderOn: html.
"		self renderMenuOn: html."
	html div class: 'uk-container uk-container-expand coreContainer'; with: [
		self renderBrowserTypeMessagesOn: html.
		self renderFlashMessagesOn: html.
		self renderCoreOn: html].
	self renderFooterOn: html
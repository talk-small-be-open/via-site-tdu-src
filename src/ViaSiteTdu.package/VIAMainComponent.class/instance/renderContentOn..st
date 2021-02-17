rendering
renderContentOn: html
	self renderHeaderOn: html.
"		self renderMenuOn: html."
"	html div class: 'uk-container uk-container-expand'; with: ["
	self renderBrowserTypeMessagesOn: html.
	self renderSystemMessageOn: html.
	self renderFlashMessagesOn: html.

	html div class: 'coreContainer'; with: [
		self renderCoreOn: html].

	self isExercising ifFalse: [
		self renderFooterOn: html.
		self renderSvgDefsOn: html.
	]
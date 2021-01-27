as yet unclassified
openLoginDialog
	| login |
	login := self am loginComponentClass new.
	login messageKey: 'mainEmbedded:pleaseLogin:info'.
	
	self showLightbox: nil component: login onAnswer: [:answer |
		answer = true ifTrue: [self login]
	]
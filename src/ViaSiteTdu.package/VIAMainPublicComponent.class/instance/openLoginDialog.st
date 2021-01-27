actions
openLoginDialog
	| login |
	login := self am loginComponentClass new.
	login messageKey: 'mainPublic:pleaseLogin:info'.
	
	self showLightbox: nil component: login onAnswer: [:answer |
		answer = true ifTrue: [self login]
	]
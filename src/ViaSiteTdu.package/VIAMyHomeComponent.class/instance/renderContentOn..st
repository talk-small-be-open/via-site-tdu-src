as yet unclassified
renderContentOn: html

"	self renderModulesShowReelOn: html"
	
	self renderSearchOn: html.

	html break.
	self currentPortfolio isEmpty ifFalse: [
		html ukContainer: [
			html ukAnchorButton
				callback: [ self app gotoMyPortfolio ];
				with: [ html iconPortfolio; space; t: 'myHome:gotoPortfolio' ]]].
	html break.
	self renderAppetizerOn: html

"	self renderShowRoomOn: html."
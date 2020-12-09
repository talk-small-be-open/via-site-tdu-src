rendering
initializeMenu
	| entry |
	
	super initializeMenu.
	
	mainMenu := VIAMenu new.

	entry := mainMenu addEntry: 'menu:searchModule' send: #gotoSearchModule to: self.
	entry icon: #search.
	mainMenu addDivider.

	entry := mainMenu addEntry: 'menu:myPortfolio' send: #gotoMyPortfolio to: self.
	entry icon: #portfolio.
	mainMenu addDivider.
		
	self ifTeacher: [
		mainMenu addEntry: 'menu:myTeacherCockpit' send: #gotoMyTeacherCockpit to: self.
		mainMenu addDivider.
	].

	self initializeInfoMenu.
	self initializeAccountMenu.
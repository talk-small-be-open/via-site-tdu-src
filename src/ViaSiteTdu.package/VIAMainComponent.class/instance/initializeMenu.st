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
		entry := mainMenu addEntry: 'menu:myTeacherCockpit' send: #gotoMyTeacherCockpit to: self.
		entry icon: #exam.
		mainMenu addDivider.
	].

	self initializeInfoMenu.
	self initializeAccountMenu.
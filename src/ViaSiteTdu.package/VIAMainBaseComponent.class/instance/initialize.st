as yet unclassified
initialize

	super initialize.
	flashMessages := OrderedCollection new.
	hideBrowserMessage := false.
	backtraced := Array new: 1.
	self initializeMenu.
	
"	self addDecoration: VIAMainDecoration new."
	self gotoFirstScreen
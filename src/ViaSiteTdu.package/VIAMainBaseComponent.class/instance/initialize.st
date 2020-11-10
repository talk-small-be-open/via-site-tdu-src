as yet unclassified
initialize

	super initialize.
	flashMessages := OrderedCollection new.
	hideBrowserMessage := false.
	self initializeMenu.
	
"	self addDecoration: VIAMainDecoration new."
	self gotoFirstScreen
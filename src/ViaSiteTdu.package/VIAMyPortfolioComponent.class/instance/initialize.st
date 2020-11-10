initialization
initialize

	super initialize.
	moduleCardRenderer := self website moduleCardRendererClass component: self.

	self currentPortfolio doneModuleExercises ifNotEmpty: [ :ms |
		certificate := (VIACertificateComponent new)
			user: self currentUser;
			moduleExercises: ms;
			yourself
	].
	
	self addContainerDiv.
	self addUkContainer.
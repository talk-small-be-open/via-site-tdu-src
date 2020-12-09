initialization
initialize

	super initialize.
	self addContainerDiv.
	moduleCardRenderer := self website moduleCardRendererClass component: self.

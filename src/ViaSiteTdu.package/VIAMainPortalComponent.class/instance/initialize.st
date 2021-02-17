as yet unclassified
initialize
	super initialize.

	self addContainerDiv.
	
	websites := self db websites sortedBySortKey.
	moduleCardRenderer := VIAPortalModuleCardRenderer component: self.
	modules := OrderedCollection new.

	self websitesDo: [ :each |
		modules addAll: each data featuredModules
	].

	modules := modules shuffled.

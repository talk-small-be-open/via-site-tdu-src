enumerating
languagesDo: aBlock
	self websitesDo: [ :each | aBlock value: each language ]
as yet unclassified
calculateFeaturedModules
	self db websiteDatasDo: [ :each |
		| modules |
		
		modules := each publicModules sortedBy: [ :eachMod |
			each portfolios count: [:eachP |
				eachP isInWorkModuleFamily: eachMod]].
		modules := modules reversed takeFirst: 10.

		each propertyAt: #featuredModules put: modules
	]
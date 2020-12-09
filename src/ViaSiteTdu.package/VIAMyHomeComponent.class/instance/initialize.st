as yet unclassified
initialize

	| showMap |
	super initialize.
	searchFormRenderer := VIATduSearchFormRenderer component: self.
	
	showMap := self isFeature: #showSwissMapOnMyHome.
	
	showMap ifTrue: [
		swissmap := VIAModulesMapComponent new.
		swissmap
			useSwissMap;
			onClick: [:modules | self chooseFromModules: modules];
			modules: self wd publicModules.

		worldmap := VIAModulesMapComponent new.
		worldmap
			useWorldMap;
			onClick: [:modules | self chooseFromModules: modules];
			modules: self wd publicModules
	]
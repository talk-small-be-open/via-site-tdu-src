initialization
initialize

	super initialize.

	showMap := self isFeature: #showSwissMapOnPublicHome.
	
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
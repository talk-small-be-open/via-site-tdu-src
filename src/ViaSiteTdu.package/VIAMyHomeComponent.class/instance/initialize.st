as yet unclassified
initialize

	| showMap |
	super initialize.

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
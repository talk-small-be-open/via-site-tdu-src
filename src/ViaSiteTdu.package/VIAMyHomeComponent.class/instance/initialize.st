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
			modules: self wd publicModules].

	showMap := self isFeature: #showWorldMapOnMyHome.
	showMap ifTrue: [
		worldmap := VIAModulesMapComponent new.
		worldmap
			useWorldMap;
			onClick: [:modules | self chooseFromModules: modules];
			modules: self wd publicModules
	]
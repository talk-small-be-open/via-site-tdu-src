initialization
initialize

	| showMap |
	super initialize.
	searchFormRenderer := VIATduEasySearchFormRenderer component: self.

	showMap := self isFeature: #showSwissMapOnPublicHome.
	showMap ifTrue: [
		swissmap := VIAModulesMapComponent new.
	
		swissmap
			useSwissMap;
			onClick: [:modules | self chooseFromModules: modules];
			modules: self wd publicModules ].

	showMap := self isFeature: #showWorldMapOnPublicHome.
	showMap ifTrue: [
		worldmap := VIAModulesMapComponent new.
		worldmap
			useWorldMap;
			onClick: [:modules | self chooseFromModules: modules];
			modules: self wd publicModules
			
		]
as yet unclassified
initializeSwissMap

	swissmap := VIAModulesMapComponent new.

	swissmap
		useSwissMap;
		cardRenderClass: VIAPortalModuleMiniCardRenderer;
		onClick: [:eachModules | self chooseFromModules: eachModules];
		modules: modules.
		
	swissmap mapComponent hideAreaTooltips.
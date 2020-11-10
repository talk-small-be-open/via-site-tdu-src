actions
showModule: aModule
	self show: ((VIATduModuleExerciser smartFromModule: aModule)
		addBackButton;
		yourself).
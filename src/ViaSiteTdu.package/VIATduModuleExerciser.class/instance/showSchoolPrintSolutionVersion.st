actions
showSchoolPrintSolutionVersion
	| printer |
	printer := VIATduSchoolPrintSolutionModuleExerciser model: model.
	printer addBackButton.
	self show: printer
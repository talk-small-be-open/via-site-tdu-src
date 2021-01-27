actions
showSchoolPrintVersion
	| printer |
	printer := VIATduSchoolPrintModuleExerciser model: model.
	printer addBackButton.
	self show: printer
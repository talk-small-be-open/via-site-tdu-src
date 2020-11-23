as yet unclassified
testdriveTask: aTask module: aModule
	| component |
	component := (VIATduModuleExerciser testdrive: aModule task: aTask).
	component addForm removeButtons.

	self coreComponent: component.
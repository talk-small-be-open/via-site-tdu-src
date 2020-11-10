as yet unclassified
testdriveTask: aTask module: aModule
	| component |
	component := (VIATduTaskExerciser testdrive: aTask module: aModule).
	component addForm removeButtons.

	self coreComponent: component
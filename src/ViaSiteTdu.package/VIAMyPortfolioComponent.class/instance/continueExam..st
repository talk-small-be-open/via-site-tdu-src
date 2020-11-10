actions
continueExam: anExam
	self show: ((VIATduExamModuleExerciser exam: anExam)
		addBackButton;
		yourself).
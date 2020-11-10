actions
viewExam: anExam

	anExam isVisibleAfterSubmit ifFalse: [
		self inform: 'myPortfolio:submittedExamNotVisible'.
	^self].
	
	self show: ((VIATduExamModuleViewExerciser exam: anExam)
		beShowSolution;
		addBackButton;
		yourself).
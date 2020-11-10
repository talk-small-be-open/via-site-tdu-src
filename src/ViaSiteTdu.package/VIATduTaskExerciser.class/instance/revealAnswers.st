actions
revealAnswers
	| solution |
	solution := VIATduTaskExerciserSolution new
		exercise: exercise;
"		addBackButton;"
		yourself.

	self show: solution onAnswer: [self restart]
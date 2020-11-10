as yet unclassified
smartFromExercise: aTaskExercise
	aTaskExercise module isExam ifTrue: [
		^VIATduTaskExerciserExam exercise: aTaskExercise].

	aTaskExercise isFinished ifTrue: [
		^VIATduTaskExerciserFinished exercise: aTaskExercise].

	^self exercise: aTaskExercise
as yet unclassified
buildExerciseComponentForTask: aTask
	| exercise |

	exercise := (moduleExercise exerciseForTask: aTask).
	^VIATduTaskExerciserEmbeddedPreview exercise: exercise
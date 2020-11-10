as yet unclassified
ignoreAllSwissgerman
	| swissgerman |
	swissgerman := 	self website swissGermanTag.
	moduleExercise taskExercisesDo: [ :each |
		(each task hasTopicTag: swissgerman) ifTrue: [
			each isIgnored: true ].
	].


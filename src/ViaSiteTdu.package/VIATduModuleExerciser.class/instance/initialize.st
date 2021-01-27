initialization
initialize
	| classification |
	
	super initialize.

	currentExerciser := nil.
	exerciserComponents := nil.
	
	moduleExercise ifNil: [
		moduleExercise := self currentPortfolio exerciseForModule: model].

	showIgnoreSwissgerman := false.

"	(self website languageCode = #de) ifTrue: [
		| swissgermanExercises tag |
		tag := self website swissGermanTag.
		swissgermanExercises := moduleExercise taskExercises select: [ :each | each task hasTopicTag: tag ].
		showIgnoreSwissgerman := swissgermanExercises notEmpty and: [
			(swissgermanExercises allSatisfy: [ :each | each isIgnored ]) not ]
	]."
	
	self addForm
		removeButtons.

	self addContainerDiv.
	
	classification := model overallClassification.
	subtitleTags := classification contextTags,
		classification grammarTopicTags,
		classification topicTags.
	
	self build
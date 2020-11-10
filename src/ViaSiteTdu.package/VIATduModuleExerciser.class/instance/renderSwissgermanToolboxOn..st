rendering
renderSwissgermanToolboxOn: html
	showIgnoreSwissgerman ifTrue: [
		html div class: 'swissgermanToolbox'; with: [
			html div: [ html t: 'moduleExerciser:hasSwissgermanTasks' ].
			html anchorButton
				callback: [ self ignoreAllSwissgerman ];
				sT: 'moduleExerciser:ignoreAllSwissgerman' ] ]
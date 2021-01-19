rendering
renderMenuOn: html
	html div class: 'moduleMenu'; with: [
		html div: [
	"		html anchor
				target: '_blank';
				callback: [self showPrintVersion];
				with: [
					html iconPrint; space.
					html t: 'moduleExerciser:printModule'].
			html space: 3."
	"		html anchor
				callback: [self showSchoolPrintVersion];
				with: [
					html iconPrint; space.
					html t: 'moduleExerciser:showSchoolPrintModule'].
			html space: 3."
	"		html anchor
				callback: [self showSchoolPrintSolutionVersion];
				with: [
					html iconPrint; space.
					html t: 'moduleExerciser:showSchoolPrintSolutionModule'].
			html space: 3."
			html anchor
				callback: [self downloadSchoolPrintVersion];
				with: [
					html iconPdf class: 'bullet'.
					html t: 'moduleExerciser:downloadSchoolPrintPdf']].
		html div: [
			html anchor
				callback: [self downloadSchoolPrintSolutionVersion];
				with: [
					html iconPdf class: 'bullet'.
					html t: 'moduleExerciser:downloadSchoolPrintSolutionPdf']].
		html div: [
			html anchor
				callback: [self downloadAssetsZipPackage];
				with: [
					html iconDownload class: 'bullet'.
					html t: 'moduleExerciser:downloadAssetsZipPackage']].
		model hasTeacherNotes ifTrue: [
			html div: [
				html
					ukModalTitle: 'exerciser:teacherNotes'
					anchor: [
						(html farIcon: 'comment') class: 'bullet'.
						html t: 'moduleExerciser:showTeacherNotes']
					with: [
						html div
							class: 'teacherNotes';
							with: [
								html printThisButton: ('div.teacherNotes div.teacherNotesText').
								html div class: 'teacherNotesText'; with: [
									html pillar: model teacherNotesPillar]].
					]
		]].

		model isOldVersion ifTrue: [
			html div: [
				html anchor
					callback: [self openNewestVersion];
					with: [
						html iconInfo class: 'bullet'.
						html t: 'moduleExerciser:openNewestVersion']].
		].
	
		self renderMyRatingOn: html.

	]
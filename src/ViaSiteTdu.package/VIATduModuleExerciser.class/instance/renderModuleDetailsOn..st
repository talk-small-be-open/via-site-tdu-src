rendering
renderModuleDetailsOn: html
	subtitleTags ifNotBlank: [
		html div: [
			html iconTags class: 'bullet'.
			html t: 'moduleExerciser:tags'.
			html space.
			subtitleTags do: [:each |
				html text: each text] separatedBy: [html text: ', '] ]].
	html div: [
		html iconPerson class: 'bullet'.
		html t: 'moduleExerciser:authors'; space.
		html text: model authorsLabel ].

	model hasCoAuthors ifTrue: [
		html div: [
			html iconPerson class: 'bullet'.
			html t: 'moduleExerciser:coAuthors'; space.
			html text: model coAuthorsLabel]].
	html div: [
		(html farIcon: 'clone') class: 'bullet'.
		html t: 'moduleExerciser:moduleVersion'.
		html space.
		html text: model versionNumberString.].

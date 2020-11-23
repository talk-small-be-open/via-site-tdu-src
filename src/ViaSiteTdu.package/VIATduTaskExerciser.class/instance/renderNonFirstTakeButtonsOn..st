rendering
renderNonFirstTakeButtonsOn: html
	html submitButton
		class: 'recheck';
"		popover: 'exerciser:recheck:info't;"
		callback: [self recheck];
		with: [
			html t: 'exerciser:recheck'.
			html small pT: 'exerciser:recheck:info'.
		].
"	html space.
	html submitButton
		class: 'reset';
		popover: 'exerciser:reset:info't;
		callback: [self reset];
		with: [html t: 'exerciser:reset']."
	html space.
	html submitButton
		class: 'revealAnswers';
"		popover: 'exerciser:showAnswers:info't;"
		callback: [self revealAnswers];
		with: [
			html t: 'exerciser:showAnswers'.
			html small pT: 'exerciser:showAnswers:info'.
		]
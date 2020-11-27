rendering
renderSolutionButtonsOn: html
	html ukAnchorButton
		class: 'reset';
"		popover: 'exerciser:reset:info't;"
		callback: [self reset];
		with: [
			html t: 'exerciser:reset'.
			html small pT: 'exerciser:reset:info'.
		].
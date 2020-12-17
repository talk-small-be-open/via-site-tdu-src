rendering
renderFirstTakeButtonsOn: html
	html submitButton
		class: 'check';
		callback: [self checkButtonClicked];
		with: [
			html iconCheckIt; space.
			html t: 'exerciser:check'].
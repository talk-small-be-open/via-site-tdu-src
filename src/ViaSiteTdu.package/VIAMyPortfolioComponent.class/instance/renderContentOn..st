rendering
renderContentOn: html
	html heading t: 'myPortfolio:title'.

	self currentPortfolio isEmpty
		ifTrue: [
			html paragraph t: 'myPortfolio:isEmpty']
		ifFalse: [
			self renderMyModulesOn: html.
			self renderMyExamsOn: html.

			html div class: 'uk-margin-top'; with: [
				html ukAnchorButton
					callback: [self clearPortfolio];
					t: 'myPortfolio:removeAll' ].

			self renderMyCertificateOn: html.
		]
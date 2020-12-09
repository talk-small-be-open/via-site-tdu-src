rendering
renderMyCertificateOn: html
	html heading level3; with: [
		html fasIcon: 'trophy'; space.
		html t: 'myPortfolio:myCertificate'.
	].
	self currentPortfolio hasDoneModuleExercises
		ifFalse: [
			html paragraph pT: 'myPortfolio:noModulesForCertificate'.
		] ifTrue: [ 
			html div class: 'uk-container topBuffer'; with: [
				html ukAnchorButton
					callback: [self generateCertificate];
					with: [
						html iconDownload; space.
						html t: 'myPortfolio:downloadCertificatePdf'].
						html div class: 'certificatePreview'; with: certificate	.
				]]
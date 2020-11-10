actions
showAcceptTermsDialog
	| dialog terms |
	terms := VIADisclaimerComponent new
		beEmbedded;
		yourself.

	dialog := (VIAConfirmationComponent new
		confirmationText: 'general:yes';
		cancelText: 'general:no';
		message: 'main:pleaseAcceptTerms';
		component: terms;
		onConfirm: [ self currentUser beTermsAccepted ];
"		onReject: [ self gotoHome ];"
		yourself).
			
	self coreComponentThenGotoHome: dialog.
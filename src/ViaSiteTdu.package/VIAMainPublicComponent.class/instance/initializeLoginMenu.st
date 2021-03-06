rendering
initializeLoginMenu
	| subMenu entry |
	subMenu := mainMenu addSubMenu.
	mainMenu addDivider.

	entry := (VIAActionMenuEntry label: 'menu:login' action: [ self openLoginDialog ]).
	entry icon: #login.
	subMenu mainEntry: entry.
	subMenu css: 'loginMenu'.

	entry := subMenu addItem: (VIAJavascriptMenuEntry label: 'menu:facebookLogin').
	entry
		css: 'facebookLogin';
		icon: #facebookOfficial;
		script: 'login_facebook()'.

	entry := subMenu addItem: (VIAJavascriptMenuEntry label: 'menu:googleLogin').
	entry
		css: 'googleLogin';
		icon: #googleOfficial;
		script: 'login_google()'.

	(subMenu addEntry: 'menu:localLogin' send: #openLocalLoginDialog to: self) icon: #login.
	(subMenu addEntry: 'menu:downloadLoginHelp' send: #downloadLocalLoginHelpPdf to: self) icon: #help.

"				self ifDevelopment: [
					html listItem: [
						self renderQuickLoginOn: html]]]]]"
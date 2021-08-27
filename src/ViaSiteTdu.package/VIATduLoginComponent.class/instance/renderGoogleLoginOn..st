rendering
renderGoogleLoginOn: html
	html anchor
		class: 'googleLogin';
		onClick: 'login_google()';
		with: [
			html iconGoogleOfficial; space.
			html t: 'login:googleLogin']
rendering
renderFacebookLoginOn: html
	html anchor
		class: 'facebookLogin';
		onClick: 'login_facebook()';
		with: [
			html iconFacebookOfficial; space.
			html t: 'login:facebookLogin']
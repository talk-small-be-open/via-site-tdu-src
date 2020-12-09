rendering
renderNavbarSmallContentOn: html
	html div class: 'uk-navbar-left'; with: [
		self renderLogoOn: html.
	].

	html div class: 'uk-navbar-right'; with: [
		html anchor
			class: 'mainMenuToggler';
			class: 'uk-navbar-item';
			ukToggleTarget: '#mainMenu';
			with: [
				html iconMenu]
	].
	
	html div
		id: 'mainMenu';
		a: 'uk-offcanvas' p: 'flip: true; overlay: true';
		with: [
			html div class: 'uk-offcanvas-bar'; with: [
				html button class: 'uk-offcanvas-close'; a: 'uk-close'.
				self renderMenuOn: html].
	]
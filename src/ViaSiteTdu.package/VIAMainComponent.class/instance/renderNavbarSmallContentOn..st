rendering
renderNavbarSmallContentOn: html
	html div class: 'uk-navbar-left'; with: [
		self renderLogoOn: html.
	].
	html div class: 'uk-navbar-right'; with: [
		html anchor
			class: 'uk-navbar-item';
			callback: [ self gotoMyPortfolio ];
			with: [html iconPortfolio].
		html anchor
			class: 'uk-navbar-item';
			class: 'mainMenuToggler';
			ukToggleTarget: '#mainMenu';
			with: [
				html iconMenu.
				"html t: 'general:menu'"]
	].
	
	html div
		id: 'mainMenu';
		a: 'uk-offcanvas' p: 'flip: true; overlay: true';
		with: [
			html div class: 'uk-offcanvas-bar'; with: [
				html button class: 'uk-offcanvas-close'; a: 'uk-close'.
				self renderMenuOn: html.
"				self renderAccountMenuOn: html."
	]]
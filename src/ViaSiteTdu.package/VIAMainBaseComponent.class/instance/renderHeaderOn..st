rendering
renderHeaderOn: html
	"Optional: ; media: @s"
	html div class: 'tdu-header'; a: 'uk-sticky' p: 'show-on-up: true; animation: uk-animation-slide-top; sel-target: .uk-navbar-container; cls-active: uk-navbar-sticky'; with: [ 
		html ukContainer: [
			html ukNavbar class: 'tdu-navbar uk-navbar-transparent'; with: [
				self ifViewportSmall: [
					self renderNavbarSmallContentOn: html ]
				else: [
					self renderNavbarContentOn: html ]
	]]]
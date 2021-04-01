as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	self updateRootEssentials: anHtmlRoot.
	self updateRootFontawesome: anHtmlRoot.
	self updateRootDefaultUi: anHtmlRoot.
"	self updateRootSite: anHtmlRoot."
	self updateRootMaps: anHtmlRoot.

	self updateRootCookieConsent: anHtmlRoot.

	anHtmlRoot stylesheet url: '/site/css/portal.css'.

	"Projects main Javascript"
"	anHtmlRoot javascript defer; url: '/site/js/portal.js'."

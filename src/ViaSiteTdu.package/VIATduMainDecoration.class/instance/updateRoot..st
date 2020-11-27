as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	self updateRootEssentials: anHtmlRoot.
	self updateRootFontawesome: anHtmlRoot.
	self updateRootDefaultUi: anHtmlRoot.
	self updateRootSite: anHtmlRoot.
	self updateRootMaps: anHtmlRoot.
	self updateRootCookieConsent: anHtmlRoot.
	
"	self updateRootPwa: anHtmlRoot."

	"For facebook/google login"
"	anHtmlRoot javascript defer; url: '/lib/bower_components/hello/dist/hello.all.min.js'."
"	anHtmlRoot javascript defer; url: 'https://cdnjs.cloudflare.com/ajax/libs/hellojs/1.18.7/hello.all.min.js'."
		
	"We use some outofthebox components"
	anHtmlRoot javascript defer; url: '/js/outofthebox/highlight_areas_v2.js'
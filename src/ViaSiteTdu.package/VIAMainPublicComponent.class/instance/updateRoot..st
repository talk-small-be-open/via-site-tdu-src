as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot bodyAttributes addClass: 'public'.
	
	self ifProduction: [
		anHtmlRoot script beJavascript; with: self googleAnalyticsJs].
	
	"For facebook/google login"
	"TODO: Only if needed"
"	anHtmlRoot javascript defer; url: '/lib/bower_components/hello/dist/hello.all.min.js'."
	"Dont defer, to slow for popup window"
	anHtmlRoot javascript url: 'https://cdnjs.cloudflare.com/ajax/libs/hellojs/1.18.7/hello.all.min.js'.
	
	"Login credentials für hello.js"
	self wd hasSocialLogin ifTrue: [
		anHtmlRoot script beJavascript; with: self wd helloJavascript ]
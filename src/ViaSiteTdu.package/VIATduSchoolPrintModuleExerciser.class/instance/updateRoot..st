updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot stylesheet url: '/css/print/print.css'.
	anHtmlRoot stylesheet url: '/site/css/print.css'.

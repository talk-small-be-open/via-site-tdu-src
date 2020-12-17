as yet unclassified
renderContentOn: html
	html paragraph: 'Choose'.
	self db websites do: [ :each |
		html anchor
			url: each url;
			with: each displayName.
		html break.
	]
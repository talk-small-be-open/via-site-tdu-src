as yet unclassified
renderFooterContentOn: html
"	self renderDisclaimerOn: html."
	html image
		class: 'supporterLogo';
		url: '/site/images/BAK.png'.
	html image
		class: 'supporterLogo';
		url: '/site/images/RSI.svg'.
	html span class: 'awards'; with: [
		html span class: 'uk-visible@s'; t: '321via:footnotes:awards'.
		html space.
		html anchor
			url: 'http://www.ielassoc.org/awards_program/past_winners_AD_2016.html';
			target: '_blank';
			with: [
				html image
					class: 'award';
					title: ('321via:footnotes:ielaAward't);
					url: '/site/images/logo321viaIELA.png']].
as yet unclassified
m001RewriteModuleLevels
	self db websiteDatasDo: [ :eachWd |
		| tags website |
		website := eachWd website.
		tags := Dictionary new.

		eachWd exerciseLevels do: [ :each |
			tags at: each put: (VIALevelTag findOrCreateByCode: each website: website) ].
		
		eachWd modules do: [ :each |
			| tag |
			tag := tags at: each exerciseLevel ifAbsent: [nil].
			tag ifNotNil: [
				each classification levelTag: tag ]]]
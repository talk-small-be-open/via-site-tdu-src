as yet unclassified
m001RewriteModuleLevels
	self db websiteDatasDo: [ :eachWd |
		| tags website |
		website := eachWd website.
		tags := Dictionary new.

		eachWd modules do: [ :each |
			| tag el |
			el := each instVarNamed: 'exerciseLevel'.
			tag := tags at: el ifAbsentPut: [(VIALevelTag findOrCreateByCode: el website: website)].
			tag ifNotNil: [
				each classification levelTag: tag ]]]
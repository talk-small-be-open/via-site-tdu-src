as yet unclassified
m003FixAssetPaths
	"Unnötig??"
	VIAHelper allInstancesOfClass: VIALocalFileReference do: [ :each |
		(each fileRelativePath isBlank and: [each fileName notBlank]) ifTrue: [
			(each fileName beginsWith: 'assets/') ifTrue: [
				each fileRelativePath: 'assets/it'.
				each fileName: (each fileName allButFirst: 7)]
			]].

	VIAHelper allInstancesOfClass: VIALocalFileReference do: [ :each |
		each fileBasePath ifNotBlank: [
			(each fileBasePath endsWith: '/assets') ifTrue: [
				each fileBasePath: (each fileBasePath allButLast: 7).
				each fileRelativePath: 'assets/it'.
				]]]
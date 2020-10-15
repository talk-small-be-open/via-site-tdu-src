as yet unclassified
m002RewriteAssetPaths
	"Remove leading slash"
	VIAHelper allInstancesOfClass: VIALocalFileReference do: [ :each |
		each fileRelativePath ifNotBlank: [
			(each fileRelativePath beginsWith: '/') ifTrue: [
				each fileRelativePath: (each fileRelativePath allButFirst)]]].

	"Correct base path"
	VIAHelper allInstancesOfClass: VIALocalFileReference do: [ :each |
		each fileBasePath ifNotBlank: [
			(each fileBasePath = '/opt/321via/repo/web_root') ifTrue: [
				each fileBasePath: '/opt/via/via_base/web_root']]].

	"Rewrite from old path structure"
	VIAHelper allInstancesOfClass: VIALocalFileReference do: [ :each |
		each fileRelativePath ifNotBlank: [
			(#('assets/it/' 'assets/fr/' 'assets/de/') anySatisfy: [ :eachPrefix | each fileRelativePath beginsWith: eachPrefix])
			ifFalse: [
				{ 'assets'->'it'. 'assets_f'->'fr'. 'assets_d'->'de' } do: [ :eachPair |
					| key value |
					key := eachPair key. value := eachPair value.
					
					((each fileRelativePath = key) or: [each fileRelativePath beginsWith: (key,'/')]) ifTrue: [ 
						each fileRelativePath: (('assets/', value), (each fileRelativePath allButFirst: key size)) ]
			]]]]
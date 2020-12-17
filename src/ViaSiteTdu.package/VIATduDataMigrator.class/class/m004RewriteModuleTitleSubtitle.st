as yet unclassified
m004RewriteModuleTitleSubtitle
	"Swap title subtitle"
	VIAHelper allInstancesOfClass: VIAModule do: [ :each |
		each tasks do: [ :eachTask |
			eachTask title ifNotBlank: [ :t |
				eachTask subtitle ifBlank: [
					eachTask title: ''.
					eachTask subtitle: t ] ]
	]]
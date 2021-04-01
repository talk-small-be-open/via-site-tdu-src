as yet unclassified
gotoFirstScreen
	
	"Modul von URL anpeilen?"
	self session gotoModule ifNotNil: [:m |
		self session clearGotoModule.

		self gotoHome. "Installs non-empty background"
		self gotoModule: m. "opens login on top"
		
		^self
		].
	
	super gotoFirstScreen
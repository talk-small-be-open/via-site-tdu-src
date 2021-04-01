as yet unclassified
initialize
	| via partez los |
	super initialize.

	self addContainerDiv.
	self beRestoringScrollPosition.

	via := self db findWebsiteByLanguage: #italian.
	partez := self db findWebsiteByLanguage: #french.
	los := self db findWebsiteByLanguage: #german.
	
	languageCharMap := { #german->'DE'. #french->'FR'. #italian->'IT' } aD.
	
	websites := self db websites sortedBySortKey.
	moduleCardRenderer := VIAPortalModuleCardRenderer component: self.
	featuredModules := OrderedCollection new.
	modules := OrderedCollection new.

	self websitesDo: [ :each |
"		featuredModules add: each data featuredModules shuffled."
		modules addAll: each data publicModules.
	].

	"Gezielte features"
	"321-via-Galerie: In treno, Gazzosa, TG del futuro, Italiano, lingua di frontiera
321-partez-Galerie: bisse sur les 100 francs, le cheval des franches montagnes, Zep, paléo festival
321los: rüeblitorte, ein schweizer hit, fasnacht, deutsch in der deutschschweiz"
	featuredModules := {
		via -> #(331 422 409 368).
		partez -> #(207 125 193 137).
		los -> #(103 128 110 150).
	} collect: [:assoc |
		| w ids mods |
		w:= assoc key. ids := assoc value.
		mods := (ids collect: [ :id | w data findModuleByShortUid: id ]) copyWithoutNils asOrderedCollection.
		
		"Complete to 4, if numbers not found"
		mods size < 4 ifTrue: [
			| missing |
			missing := 4 - mods size.
			mods addAll: ((w data featuredModules shuffled) takeFirst: missing)
		].
		
		mods
	].


	self initializeSwissMap
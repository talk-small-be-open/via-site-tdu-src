as yet unclassified
renderModule: aModule callback: aBlock on: html
	html div
		class: 'moduleCard mini';
		class: (component levelCss: aModule);
		with: [
"			html span
				class: 'level-badge';
				class: 'level-', aModule exerciseLevel asLowercase;
				with: aModule exerciseLevel."

			aModule imageAsset ifNil: [
				html image width: 100; height: 100; url: '/images/module-card-placeholder.jpg' ]
			ifNotNil: [ 
				html
					ukImageWidth: 100
					height: 100
					url: (aModule imageAsset imageUrlCropWidth: 100 height: 100)
					hidpiUrl: (aModule imageAsset imageUrlCropWidth: 200 height: 200)
			].

			html div class: 'title'; with: aModule title.
	]
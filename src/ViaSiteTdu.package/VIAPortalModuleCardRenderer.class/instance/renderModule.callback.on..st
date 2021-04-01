as yet unclassified
renderModule: aModule callback: aBlock on: html
	html anchor
"		callback: aBlock;"
		url: aModule permaUrl;
		target: '_blank';
		with: [
			html ukPanel
				class: 'moduleCard normal';
				class: (component levelCss: aModule);
				with: [
					html span
						class: 'level-badge';
						class: 'level-', aModule exerciseLevel asLowercase;
						with: aModule exerciseLevel.
					aModule imageAsset ifNil: [
						html image width: 200; height: 200; url: '/images/module-card-placeholder.jpg' ]
					ifNotNil: [ 
						html
							ukImageWidth: 200
							height: 200
							url: (aModule imageAsset imageUrlCropWidth: 200 height: 200)
							hidpiUrl: (aModule imageAsset imageUrlCropWidth: 400 height: 400)
					].
							
					html div class: 'tdu-titel-box'; with: aModule title.

					self renderTags: aModule on: html.

					]]
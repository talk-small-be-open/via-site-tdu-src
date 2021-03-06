rendering-visitor
renderFileDownloader: aFileDownloader on: html
	| asset |
	asset := aFileDownloader asset.

	asset ifNil: [ ^ self ].
	
	html div class: 'fileDownloader'; with: [
		html anchor
			callback: [ self downloadAsset: asset ];
			with: [
				html iconDocument; space; text: asset title.
				html space.
				html text: '('.
				html text: (GRPrinter decimalFileSize print: asset byteSize).
				html text: ')'.
			].
		self renderAssetInfo: asset on: html.
	]
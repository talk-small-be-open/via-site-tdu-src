rendering
renderFooterOn: html
	html div class: 'footer'; with: [
		html ukGrid class: 'uk-grid-small'; with: [
			html div: [
				self website renderFooterContentOn: html ].

			html div class: 'uk-width-expand@m'.

			html div class: 'footnotes uk-width-auto@m'; with: [
				html ifT: '321via:footnotes' then: [ :yield |
					yield value.
					html text: ' | '.
				].
				html anchor
					callback: [self openDisclaimer];
					t: '321via:disclaimer:link'.
				html text: ' | '.
				html anchor
					callback: [self openImprint];
					t: '321via:imprint:link'.
				self ifAdmin: [
					html text: ' | '.
					html anchor
						callback: [self switchToUser];
						with: 'su'].
				self session hasBackgroundAdminUser ifTrue: [
					html text: ' | '.
					html anchor
						callback: [self switchBackToAdmin];
						with: 'bck'.
				]
			]]].
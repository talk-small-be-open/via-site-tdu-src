rendering
renderBrowserTypeMessagesOn: html
	| browser key |
	hideBrowserMessage ifFalse: [
		browser := self session browserType.
		key := 'browserWarning:', browser asLowercase.
		key t
			ifBlank: [ hideBrowserMessage := true ]
			ifNotBlank: [
				browser ifNotBlank: [
					html div class: 'uk-margin uk-container uk-container-expand browserWarning'; with: [
						html ukAlertDanger: [
							html anchor
								class: 'uk-alert-close';
								a: 'uk-close';
								callback: [ hideBrowserMessage := true ].
							html iconWarning; space.
							html t: key]]]]
		]
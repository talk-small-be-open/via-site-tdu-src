rendering
renderMyRatingOn: html
	self ifFeature: #module:showRatingPersonal then: [
		html div class: 'rating'; with: [
			| r rEff |
			r := model rating byUser: self currentUser.
			rEff := r ifNil: [0].
			html iconStar class: 'bullet'.
			html t: 'moduleExerciser:myRating'; space.

			html anchor
				class: 'noRating';
				callback: [self rateModule: 0];
				with:  [html fasIcon: 'power-off'].
			html space.

			1 to: 5 do: [:index |
				html anchor
					callback: [self rateModule: index];
					with: [
						index <= rEff ifTrue: [html iconStar].
						index > rEff ifTrue: [html iconStarEmpty]].
			].

			r ifNil: [
				html space.
				html t: 'moduleExerciser:notYetRatedByMe'].

		]]
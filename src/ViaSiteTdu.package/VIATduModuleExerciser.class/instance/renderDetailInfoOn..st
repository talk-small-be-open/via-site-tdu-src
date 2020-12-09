rendering
renderDetailInfoOn: html
	| id |
	id := html nextId.
	html ukButtonSmall
		ukToggleFadeTarget: ('#', id);
"		style: 'cursor: pointer';"
		with: [
			html t: 'moduleExerciser:details'.
			html space.
			html iconDropdown].
	html div
		id: id;
		beHidden;
		class: 'moduleDetails';
		with: [
			self renderMenuOn: html.
			self renderSharingInfoOn: html.
			self renderModuleDetailsOn: html.
		]
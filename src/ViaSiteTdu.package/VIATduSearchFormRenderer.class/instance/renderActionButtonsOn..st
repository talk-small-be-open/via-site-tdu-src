rendering
renderActionButtonsOn: html
"	html ukGrid
		class: 'uk-grid-small uk-child-width-auto@s uk-child-width-1-2';
		with: ["

"			html div: [
				html ukSubmitButton
					id: 'searchButton';
					class: 'defaultButton searchButton';
					class: 'uk-width-expand';
					callback: [self performSearch];
					t: 'searchForm:search' ]."

				"Functional but invisible"
				html submitButton
					id: 'searchButton';
					class: 'defaultButton searchButton';
					style: 'display: none';
					callback: [self performSearch].

				html ukSubmitButton
					class: 'actionButton';
					callback: [self performBlankSearch];
"					class: ('uk-button level-a1');"
					t: 'searchForm:showAll'.


"				html ukSubmitButton
					class: 'showAll searchButton';
					class: 'uk-width-expand';
					callback: [self performBlankSearch];
					t: 'searchForm:showAll' ]."

			self ifTeacher: [
					html ukSubmitButton
"						class: 'showAll searchButton';
						class: 'uk-width-expand';"
						class: 'actionButton';
						callback: [self performExamsSearch];
						with: [ html iconExam ]
"						t:'searchForm:showAllExams'" ].

				html ukSubmitButton
"					beSubmit;"
"					class: 'searchButton';
					class: 'uk-width-expand';"
					class: 'actionButton';
					callback: [self toggleExtendedSearchAndPerform];
					with: [
						html fasIcon: 'filter'.
"						html t: (self isExtendedSearch ifTrue: ['searchForm:less'] ifFalse: ['searchForm:more'])"
					]
			

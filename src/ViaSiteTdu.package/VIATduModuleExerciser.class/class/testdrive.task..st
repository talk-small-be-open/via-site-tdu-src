as yet unclassified
testdrive: aModule task: aTask
	| instance |
	"Factory for Testing!"

	"Ist es ein Prüfungsmodul?"
	aModule isExam ifTrue: [
		| testExam testExercise |

		testExam := (VIAExam module: aModule)
			teacherUser: self currentUser;
			yourself.
			
		testExercise := VIAModuleExercise module: aModule user: self currentUser.
		
		^VIATduExamModuleExerciser exam: testExam moduleExercise: testExercise.
	].

	instance := (self model: aModule).
	
	aTask
		ifNotNil: [ instance testdriveTask: aTask ]
		ifNil: [ instance start ].
	
	^ instance
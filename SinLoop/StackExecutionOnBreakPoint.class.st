Class {
	#name : #StackExecutionOnBreakPoint,
	#superclass : #Object,
	#instVars : [
		'nameOfBreakPoint',
		'debugger',
		'stacks'
	],
	#category : #SinLoop
}

{ #category : #accessing }
StackExecutionOnBreakPoint >> debugger [
	^ debugger
]

{ #category : #accessing }
StackExecutionOnBreakPoint >> debugger: anObject [
	debugger := anObject
]

{ #category : #initialization }
StackExecutionOnBreakPoint >> findStacksOf: aBlock [.
	debugger := SindarinDebugger debug: aBlock.
	stacks := OrderedCollection new.

	[ debugger isExecutionFinished ]
		whileFalse: [		
			[ debugger isExecutionFinished
				or: [ debugger node isMessage and: [ debugger node selector = nameOfBreakPoint ] ] ]
					whileFalse: [ debugger step ].
			debugger isExecutionFinished ifFalse: [ stacks add: thisContext. debugger skip ]
		].
]

{ #category : #initialization }
StackExecutionOnBreakPoint >> initialize [
	nameOfBreakPoint := #pouet. "or whatever"

]

{ #category : #accessing }
StackExecutionOnBreakPoint >> nameOfBreakPoint [
	^ nameOfBreakPoint
]

{ #category : #accessing }
StackExecutionOnBreakPoint >> nameOfBreakPoint: anObject [
	nameOfBreakPoint := anObject
]

{ #category : #accessing }
StackExecutionOnBreakPoint >> stacks [
	^ stacks
]

{ #category : #accessing }
StackExecutionOnBreakPoint >> stacks: anObject [
	stacks := anObject
]

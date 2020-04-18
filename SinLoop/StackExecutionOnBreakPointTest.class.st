Class {
	#name : #StackExecutionOnBreakPointTest,
	#superclass : #TestCase,
	#category : #SinLoop
}

{ #category : #'as yet unclassified' }
StackExecutionOnBreakPointTest >> oneInstantBreakPoint [
	self pouet
]

{ #category : #'as yet unclassified' }
StackExecutionOnBreakPointTest >> testInstantBreakPoint [
	| stackExecutionOnBreakPoint |
	stackExecutionOnBreakPoint := StackExecutionOnBreakPoint new findStacksOf: [ self oneInstantBreakPoint ].
	self assert: stackExecutionOnBreakPoint stacks size equals: 1.
	
]

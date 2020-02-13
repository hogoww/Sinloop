Class {
	#name : #InfiniteLoopDetector,
	#superclass : #Object,
	#instVars : [
		'debugger'
	],
	#category : #SinLoop
}

{ #category : #loopsDetect }
InfiniteLoopDetector >> detectLoop: aBlockClosure [ 
	| lastSF |
	debugger := SindarinDebugger debug: aBlockClosure.
	lastSF := thisContext.
	self halt.
	[ debugger context selector = lastSF selector ]
	whileFalse: [ 
		self halt.
		debugger step.
		lastSF := debugger context
	].
	self halt.
]

{ #category : #loopsDetect }
InfiniteLoopDetector >> foundLoop [
	^ self
]

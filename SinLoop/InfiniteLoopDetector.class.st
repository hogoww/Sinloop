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
	debugger := SindarinDebugger debug: aBlockClosure 
]

{ #category : #loopsDetect }
InfiniteLoopDetector >> foundLoop [
	^ self
]

Class {
	#name : #InfiniteLoopDetectorTest,
	#superclass : #TestCase,
	#instVars : [
		'detector'
	],
	#category : #SinLoop
}

{ #category : #'as yet unclassified' }
InfiniteLoopDetectorTest >> methodLoopingInfinitelyInWhileTrue [
	[ true ] whileTrue: [ 1 ]
]

{ #category : #initialization }
InfiniteLoopDetectorTest >> setUp [
	detector := InfiniteLoopDetector new
]

{ #category : #tests }
InfiniteLoopDetectorTest >> testSimpleWhileTrue [
	self error: 'we use whileTrue in the test, which is a compiler special method. cannot work'.
	detector detectLoop: [ self methodLoopingInfinitelyInWhileTrue ].
	self assert: detector foundLoop
]

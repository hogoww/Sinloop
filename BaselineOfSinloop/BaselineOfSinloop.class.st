Class {
	#name : #BaselineOfSinloop,
	#superclass : #BaselineOf,
	#category : #BaselineOfSinloop
}

{ #category : #baselines }
BaselineOfSinloop >> baseline: spec [
    <baseline>
    spec
        for: #common
        do: [
            "Dependencies"
            self sindarin: spec.
            "Packages"
            spec
                package: 'Sinloop'.
            "Groups"
            spec
                group: 'Core' with: #('Sinloop') ].
]

{ #category : #baselines }
BaselineOfSinloop >> projectClass [
    ^ MetacelloCypressBaselineProject
]

{ #category : #baselines }
BaselineOfSinloop >> sindarin: spec [
    spec baseline: 'Sindarin' with: [ spec repository: 'github://dupriezt/ScriptableDebugger' ]
]

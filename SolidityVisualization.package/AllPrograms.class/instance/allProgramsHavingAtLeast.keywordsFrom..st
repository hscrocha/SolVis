public - visualization
allProgramsHavingAtLeast: threshold keywordsFrom: someRelevantKeywords
	^ programs select: [ :prog | (prog relevantKeywords intersection: someRelevantKeywords) size >= threshold ]
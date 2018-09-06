baselines
baseline: spec
  <baseline>

  spec for: #common do: [
    spec baseline: 'SmaCC' with: [
      spec repository: 'github://SmaCCRefactoring/SmaCC' ].

    spec configuration: 'Roassal2' with: [
      spec
        version: #stable;
        repository: 'github://ObjectProfile/Roassal2' ].


    spec package: 'SolidityVisualization' with: [
      spec requires: #('SmaCC' 'Roassal2') ] ].
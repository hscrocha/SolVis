baselines
baseline: spec
  <baseline>

  spec for: #common do: [
    spec baseline: 'SmaccSolidity' with: [
      spec repository: 'github://smartshackle/SmaCC-Solidity' ].

    spec configuration: 'Roassal2' with: [
      spec
        version: #stable;
        repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main' ].


    spec package: 'SolidityVisualization' with: [
      spec requires: #('SmaccSolidity' 'Roassal2') ] ].
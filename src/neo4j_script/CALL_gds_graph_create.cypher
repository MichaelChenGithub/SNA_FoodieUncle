CALL gds.graph.create(
  'myGraph',
  ['user', 'business'],
  {
    Related: {
      orientation: 'UNDIRECTED',
      properties: 'weight'
    }
  }
)

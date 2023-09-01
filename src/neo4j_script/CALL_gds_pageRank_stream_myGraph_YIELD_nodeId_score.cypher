CALL gds.pageRank.stream('myGraph') YIELD nodeId, score
WITH gds.util.asNode(nodeId) AS n, score
MATCH (n)-[r:Related]-()
RETURN n.Name AS name, score, count(r) AS interactions
ORDER BY score DESC
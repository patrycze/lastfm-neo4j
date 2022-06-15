MATCH (vb:Person { name: "TYPE_NAME" })-[:LIKES]->(cross_band:Band)<-[:LIKES]-(p:Person)-[:LIKES]->(other_band:Band)
WHERE NOT (vb)-[:LIKES]->(other_band)
WITH other_band.name as name, count(p) as followers_num
RETURN name, followers_num
ORDER BY followers_num DESC
LIMIT 10

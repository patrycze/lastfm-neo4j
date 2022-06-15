MATCH (p:Person)-[:LIKES]->(b:Band)
WITH p, count(b) as bands_likes
RETURN p.name as name, bands_likes
ORDER BY bands_likes DESC

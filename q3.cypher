MATCH (b:Band)-[:OF]->(g:Genre)
RETURN b.name, count(g) as genres
ORDER BY genres DESC

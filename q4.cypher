MATCH (g1:Genre)<-[:OF]-(b:Band)-[:OF]->(g2:Genre)
RETURN g1.name as genre_name, count(DISTINCT b) as num_of_bands
ORDER BY num_of_bands DESC

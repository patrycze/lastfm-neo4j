MATCH (p:Person { name: "TYPE_NAME" })-[:LIKES]->(b:Band)-[:OF]->(g:Genre) RETURN p, b, g

MATCH (g:Genre)
CALL apoc.load.html("https://last.fm" + g.url + "/artists", { data: "h3.big-artist-list-title a" }) YIELD value
UNWIND value.data as n
MERGE (b:Band { name: n.text })
MERGE (b)-[:OF]->(g)

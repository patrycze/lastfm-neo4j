MATCH (b:Band)-[:OF]->(g:Genre { name: "Rock" })
CALL apoc.load.html("https://last.fm/music/" + replace(b.name, " ", "+") + "/+shoutbox?page=4", { data: ".shout-user" }) YIELD value
UNWIND value.data as n
MERGE (p:Person { name: n.text })
MERGE (p)-[:LIKES]->(b)

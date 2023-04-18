CALL apoc.load.html("https://www.last.fm/music", { data: "a.music-more-tags-tag-inner-wrap, section.music-section:eq(0) a.music-featured-item-heading-link" }) YIELD value
UNWIND value.data as n
MERGE (g:Genre { url: ('/tag/' + apoc.text.clean(n.text)), name: apoc.text.capitalizeAll(n.text) })

"""
Given a `question`, set of `keywords`, and `dates`, will try to collect articles from newsapi.ai

# Arguments
- `keywords::AbstractVector`: A list of keywords for collecting articles.
- `dates::AbstractVector{Date}`: A range of dates for collecting articles. 
"""
function ingest_news(keywords::AbstractVector, dates::Base.AbstractVecOrTuple{Date})
    user = Dict("keywords"=>Dict("keywords"=>keywords, "locations"=>"https://en.wikipedia.org/wiki/United_States", "languages"=>"eng"))
    arts = query_newsapi(user, dates, 5, "SocialScore")

    # TODO:
    # chunkise_text()
    # save_to_db()
    return arts[1:50]
end



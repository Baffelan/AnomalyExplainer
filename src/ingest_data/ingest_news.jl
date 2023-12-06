"""
Given a `question`, set of `keywords`, and `dates`, will try to collect articles from newsapi.ai

# Arguments
- `keywords::AbstractVector`: A list of keywords for collecting articles.
- `dates::AbstractVector{Date}`: A range of dates for collecting articles. 
"""
function ingest_news(keywords::AbstractVector, dates::Base.AbstractVecOrTuple{Date})
    user = Dict("keywords"=>Dict("keywords"=>keywords, "locations"=>["United_States"], "languages"=>["eng"]))
    arts = query_newsapi(user, dates, 100, "SocialScore")
    # chunkise_text()
    # save_to_db()
    return arts
end

ingest_news(["amazon"], (today()-Day(2), today()))
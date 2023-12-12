"""
Adds context to the question given by the user. This includes the LLM's role, as well as the news articles to analyse.

# Arguments
- `question::String`: The user question to be answered.
- `keywords::AbstractVector`: A list of keywords for collecting articles.
- `dates::AbstractVector{Date}`: A range of dates for collecting articles. 
"""
function get_context(question::String,keywords::AbstractVector, dates::Base.AbstractVecOrTuple{Date})
    role = "You are an financial assistant helping to explain the movement of stock prices. You will be given a collection of news articles, and from them answer the question: "
    
    article_dicts = ingest_news(keywords, dates)

    articles = [string(art["body"],"\n") for art in article_dicts]
    # TODO: replace above with below when/if RAG is implimented
    # articles = search_db(keywords, dates)

    query = string(role, question)
    return query, articles
end


"""
Adds context to the question given by the user. This includes the LLM's role, as well as the news articles to analyse.

# Arguments
- `question::String`: The user question to be answered.
- `keywords::AbstractVector`: A list of keywords for collecting articles.
- `dates::AbstractVector{Date}`: A range of dates for collecting articles. 
"""
function add_context(question::String, keywords::AbstractVector, dates::AbstractVector{Date})
    role = ""
    
    articles = search_db(keywords, dates)

    query = string(role, question, articles)
    return query
end
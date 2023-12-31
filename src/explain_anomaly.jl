"""
Given a `question`, set of `keywords`, and `dates`, will try to provide a reason for the occurence of an anomalous stock price change.
This is the main function in this package.

# Arguments
- `question::String`: The user question to be answered.
- `keywords::AbstractVector`: A list of keywords for collecting articles.
- `dates::AbstractVector{Date}`: A range of dates for collecting articles. 
"""
function explain_anomaly(question::String, keywords::AbstractVector, dates::Base.AbstractVecOrTuple{Date})
    ingest_news(keywords, dates)
    query, articles = get_context(question, keywords, dates)
    output = explain.([query], articles)
    return output
end

"""
Searches the vector database for relvant news articles to use as context for the llm model.

# Arguments
- `question::String`: The user question.
"""
function search_db(question::String)
    user_query_embedding = pyconvert(Vector,val.embedding_tool(pystr(question)))
    result = DataFrame(execute(conn, string("""SELECT *, 1 - (embedding <=> '""",string(user_query_embedding), """') AS cosine_similarity FROM posts order by 2 desc """)))
    return result
end
"""
Returns the LLM embedding using the embedding_tool.pyc

# Arguments
- `text::String`
"""
function embedding_tool(text::String)
    emb_tool = pyimport("embedding_tool")

    return pyconvert(Vector,emb_tool.embedding_tool(pystr(text)))
end

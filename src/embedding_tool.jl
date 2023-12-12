"""
Returns the LLM embedding using the embedding_tool.pyc

# Arguments
- `text::String`
"""
function embedding_tool(text::String)
    @pyexec """import sys
    # caution: path[0] is reserved for script path (or '' in REPL)
    sys.path.insert(1, './src')
    """
    emb_tool = pyimport("embedding_tool")

    return pyconvert(Vector,emb_tool.embedding_tool(pystr(text)))
end

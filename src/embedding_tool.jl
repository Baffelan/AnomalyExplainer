"""
Returns the LLM embedding using the embedding_tool.pyc

# Arguments
- `text::String`
"""
function embedding_tool(text::String)
    val = @pyexec """
        import sys
        sys.path.insert(1, './src/python_funcs')
        import embedding_tool
        embedding_tool.embedding_tool"""
    emb_tool = pyimport("embedding_tool")

    return pyconvert(Vector,embt.embedding_tool(pystr(text)))
end
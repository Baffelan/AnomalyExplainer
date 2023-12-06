"""
Runs the llm query.

# Arguments
- `query::String`: The query string for the llm to answer.
"""
function explain(query)
    val = @pyexec """
        import sys
        sys.path.insert(1, './src/python_funcs')
        import explainer_tool
        explainer_tool.explainer_tool"""
    exp_tool = pyimport("explainer_tool")

    return pyconvert(Vector,exp_tool.explainer_tool(pystr(query)))
end


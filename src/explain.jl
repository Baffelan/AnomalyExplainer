"""
Runs the llm query.

# Arguments
- `query::String`: The query string for the llm to answer.
"""
function explain(query, article)
    exp_tool = pyimport("explainer_tool")
    println(length(article))

    return (pyconvert(String,exp_tool.explain(pystr(query), pystr(article), pystr("gpt-4-1106-preview"))), article)
end

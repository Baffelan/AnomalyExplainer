"""
Runs the llm `query`` with `article` inserted.

# Arguments
- `query::String`: The query string for the llm to answer.
- `article::String`: The article being analysed
"""
function explain(query::String, article::String)
    exp_tool = pyimport("explainer_tool")
    println(length(article))

    return (pyconvert(String,exp_tool.explain(pystr(query), pystr(article), pystr("gpt-4-1106-preview"))), article)
end

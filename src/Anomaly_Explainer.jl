module Anomaly_Explainer
    using PythonCall
    using CondaPkg
    using DataFrames
    using IOM_newsAPI_query
    using Dates

    const pyglobals = PyDict()
    #include("Contextualiser/embedding_tool.jl")
end



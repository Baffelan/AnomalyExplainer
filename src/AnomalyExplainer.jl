module AnomalyExplainer
    using PythonCall
    using CondaPkg
    using DataFrames
    using IOM_newsAPI_query
    using Dates

    const pyglobals = PyDict()
    include("Contextualiser/get_context.jl")
    include("Contextualiser/search_db.jl")

    include("ingest_data/chunkise_text.jl")
    include("ingest_data/ingest_news.jl")
    include("ingest_data/save_to_db.jl")

    include("embedding_tool.jl")
    include("explain.jl")
    include("explain_anomaly.jl")

    export explain_anomaly
    
end



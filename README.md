# Anomaly_Explainer

[![Build Status](https://github.com/your-GitHub-username/Anomaly_Explainer.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/your-GitHub-username/Anomaly_Explainer.jl/actions/workflows/CI.yml?query=branch%3Amain)
# Environment Variables
This package leverages the [IOM_newsAPI_query](https://github.com/Baffelan/IOM_newsAPI_query) package and as such will need a [news api](https://www.newsapi.ai/) key (`ENV["NEWSAPIKEY"]="SecretKey"`).

This package also uses the [openAI](https://openai.com/) API and will need a key (`ENV["OPENAI_API_KEY"]="AnotherSecret"`)

# Example
```julia
using Anomaly_Explainer
using Dates

ENV["NEWSAPIKEY"]="SecretKey"
ENV["OPENAI_API_KEY"]="AnotherSecret"

explain_anomaly("There has been a recent spike in google share price. Does this article mention anything that could have affected the shock price of google? Begin the answer with a 'Yes' or a 'no'.", ["google"], (today()-Day(3), today()))
```
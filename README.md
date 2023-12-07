# Anomaly_Explainer

[![Build Status](https://github.com/your-GitHub-username/Anomaly_Explainer.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/your-GitHub-username/Anomaly_Explainer.jl/actions/workflows/CI.yml?query=branch%3Amain)

# Example
```julia
using Anomaly_Explainer
using Dates
explain_anomaly("There has been a recent spike in google share price. Does this article mention anything that could have affected the shock price of google? Begin the answer with a 'Yes' or a 'no'.", ["google"], (today()-Day(3), today()))
```
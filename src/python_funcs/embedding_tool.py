from langchain.embeddings import OpenAIEmbeddings


def embedding_tool(text):
    embeddings = OpenAIEmbeddings()
    query_result = embeddings.embed_query(text)
    return query_result

def embedding_tol(text):
    embeddings = OpenAIEmbeddings()
    query_result = embeddings.embed_query(text)
    return query_result
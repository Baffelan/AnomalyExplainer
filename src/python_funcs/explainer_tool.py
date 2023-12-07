# # import json
# import os

# from langchain.indexes import VectorstoreIndexCreator
# from langchain.chat_models import ChatOpenAI
# from langchain.prompts.chat import ChatPromptTemplate

# from langchain.prompts import (
#     ChatPromptTemplate,
#     MessagesPlaceholder,
#     SystemMessagePromptTemplate,
#     HumanMessagePromptTemplate,
# )
# from langchain.chains import LLMChain
# from langchain.memory import ConversationBufferMemory

# from langchain.callbacks import get_openai_callback

# from csv import writer

# import pandas as pd

# import tiktoken

# from math import ceil

# import json

from langchain.embeddings import OpenAIEmbeddings


def embedding_tool(text):
    embeddings = OpenAIEmbeddings()
    query_result = embeddings.embed_query(text)
    return query_result

def explain(text, model):
    pass
    # def setup_chat_model(sys_template, model):
    #     llm = ChatOpenAI(temperature=0.0, model_name=model)
    #     prompt = ChatPromptTemplate(
    #         messages=[
    #             SystemMessagePromptTemplate.from_template(
    #                 sys_template
    #             ),
    #             # The `variable_name` here is what must align with memory
    #             MessagesPlaceholder(variable_name="chat_history"),
    #             HumanMessagePromptTemplate.from_template("{question}")
    #         ]
    #     )
    #     # Notice that we `return_messages=True` to fit into the MessagesPlaceholder
    #     # Notice that `"chat_history"` aligns with the MessagesPlaceholder name.
    #     memory = ConversationBufferMemory(memory_key="chat_history", return_messages=True)
    #     conversation = LLMChain(
    #         llm=llm,
    #         prompt=prompt,
    #         verbose=False,
    #         memory=memory
    #     )
    #     return conversation

    # query_llm = setup_chat_model(text, model=model)
    # query_llm({"question": ""})

    # response = query_llm.memory.chat_memory.messages[-1].content.split("\n")
    # return response



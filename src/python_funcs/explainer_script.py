# import json
import os
os.system("pip uninstall torch")
os.system("pip install sentence_transformers")

# from langchain.document_loaders import UnstructuredPDFLoader
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

# import textwrap

# import itertools
# # 2) load data
# SAMPLE_NUMBER = "Yearly"
# OUTPUT_FILE = "YearlyTest/gpt_4_output.csv"
# TOKEN_FILE = "YearlyTest/gpt_4_tokens.csv"
# TITLE_MODEL = "gpt-3.5-turbo"
# MAIN_MODEL = "gpt-4"

# import json

# human_inputs = json.load(open("./Data/amazon_new_data.json"))

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


# def process_pdf_text(text):
#     model=MAIN_MODEL
#     find_titles = setup_chat_model("""You are an financial assistant helping to explain the movement of stock prices. The Amazon stock price fell more than expected. Does this article mention anything that COULD effect the stock price in any way?""", model=model)
#     find_titles({"question": text})



#     section_titles = find_titles.memory.chat_memory.messages[-1].content.split("\n")
#     print(section_titles)


# print(len(human_inputs))
# for i in range(len(human_inputs)):
#     print(i)
#     process_pdf_text(human_inputs[i]["body"])
#     print("\n\n")
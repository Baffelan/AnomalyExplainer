"""
Saves a `dbrow`` to the `vectorembeddingdb`.

# Arguments
- `dbrow::AbstractVector`: Vector containing the text body and the text embedding.
"""
function save_to_db(dbrow::AbstractVector)

end

# # Connect to postgres (vector database not set up yet)
# using Octo
# using LibPQ

# conn=LibPQ.Connection("dbname=vectorembeddingdb host=Localhost user=postgres password=$(ENV["LOCALPASSWORD"])")

# execute(conn, "create table posts (
#     id serial primary key,
#     title text not null,
#     body text not null,
#     embedding vector(1536)
#   );")

# execute(conn, "drop table posts;")

# execute(conn, "INSERT INTO posts (id, title, body, embedding) values (default, 'testing', '$(replace(news2,"'"=>""))', '$(emb2)');")



# news3 = JSON.parsefile("Data/amazon_new_data.json")[55]["body"]

# DataFrame(test)
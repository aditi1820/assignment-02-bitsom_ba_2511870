## Vector DB Use Case

A traditional keyword-based search system would not be sufficient for searching large legal contracts. Keyword search relies on exact word matching and does not understand the meaning or context of the query. For example, if a lawyer searches for "termination clauses," the system may fail to retrieve relevant sections that use different wording such as "conditions for ending the agreement."

A vector database solves this problem by using embeddings to capture semantic meaning. Instead of relying on exact keywords, it converts both the query and document content into numerical vectors and compares their similarity. This allows the system to identify relevant information even when the wording is different.

In this case, long contracts can be divided into smaller sections, and embeddings can be generated for each section. When a lawyer asks a question in plain English, the query is also converted into an embedding and compared with stored vectors using similarity measures such as cosine similarity.

Therefore, a vector database enables semantic search, improving accuracy and making it highly effective for searching complex legal documents.
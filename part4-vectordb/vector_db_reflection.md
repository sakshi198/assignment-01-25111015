## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for a law firm dealing with large contracts. Keyword search relies on exact word matches, which can miss relevant information if different terminology or phrasing is used. For example, a query like "termination clauses" may not return results if the contract uses phrases like "contract ending conditions" instead.

Vector databases solve this problem by using embeddings, which capture the semantic meaning of text rather than just exact words. This allows the system to understand the intent behind a query and retrieve relevant sections even if the wording is different.

In this system, each section of the contract would be converted into vector embeddings and stored in a vector database. When a lawyer enters a query in plain English, it is also converted into an embedding. The system then performs similarity search to find the most relevant sections based on meaning, not keywords.

This approach significantly improves search accuracy, especially for long and complex documents like legal contracts. Therefore, a vector database plays a critical role in enabling intelligent, context-aware search capabilities that go beyond traditional keyword-based systems.
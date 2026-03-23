## Storage Systems

For this architecture, multiple storage systems are used to meet different requirements. A relational database (MySQL) is used to store structured patient records, as it ensures strong consistency and supports transactional operations required for healthcare data. A Data Lake is used to store raw data such as ICU device streams, logs, and unstructured data like reports and images, allowing scalability and flexibility.

A Data Warehouse is used for generating monthly reports such as bed occupancy and department-wise costs. It enables efficient analytical queries and structured reporting. Additionally, a Vector Database is used to support semantic search functionality, allowing doctors to query patient history in natural language. Patient records are converted into embeddings and stored in the vector database for similarity-based retrieval.

## OLTP vs OLAP Boundary

The OLTP system consists of the relational database that handles day-to-day transactions such as patient admissions, treatments, and billing. This system is optimized for fast inserts, updates, and consistency.

The OLAP system begins at the Data Warehouse, where data from the OLTP system and Data Lake is transformed and loaded for analytical processing. The Data Warehouse is optimized for complex queries, aggregations, and reporting. The boundary between OLTP and OLAP lies at the ETL pipeline, where transactional data is cleaned and moved into analytical storage.

## Trade-offs

One significant trade-off in this design is between consistency and scalability. While relational databases provide strong consistency, they are not ideal for handling large volumes of real-time streaming data such as ICU vitals. On the other hand, a Data Lake provides scalability but may lack strict data governance.

To mitigate this, a hybrid approach is used where critical patient data is stored in a relational database for accuracy, while high-volume streaming data is stored in a Data Lake. Data governance tools and validation processes can be applied to the Data Lake to maintain data quality while still benefiting from its scalability.
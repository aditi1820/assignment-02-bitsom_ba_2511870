## Storage Systems

For this system, multiple storage solutions are used to handle different types of data and requirements. An OLTP database such as MySQL is used to store structured patient records and transactional data, ensuring consistency and reliability. A Data Warehouse is used for analytical queries and reporting, such as monthly reports on hospital performance. A Data Lake is used to store raw and unstructured data, including real-time data from ICU monitoring devices and historical datasets. A Vector Database is used to enable semantic search, allowing doctors to query patient history using natural language queries.

## OLTP vs OLAP Boundary

The OLTP system handles day-to-day operations such as patient data entry, treatment updates, and transactions. It is optimized for fast and consistent writes. The OLAP system begins at the Data Warehouse, where data is transformed and aggregated for reporting and analysis. ETL pipelines are used to transfer data from OLTP systems and Data Lake into the Data Warehouse. This separation ensures that heavy analytical queries do not impact transactional performance.

## Trade-offs

One significant trade-off in this architecture is increased system complexity due to the use of multiple storage systems such as Data Lake, Data Warehouse, and Vector Database. Managing and maintaining these systems requires more effort and expertise. However, this trade-off is necessary to efficiently handle different data types and workloads. To mitigate this, centralized monitoring, automation tools, and proper data governance practices can be implemented to ensure smooth operation and data consistency across systems.
## Anomaly Analysis

## Normalization Justification

Keeping all data in a single table may appear simple initially, but it leads to significant issues in real-world scenarios. In the given dataset, customer, product, and order information are all stored together, which causes data redundancy and inconsistencies. For example, the same customer appears multiple times across different orders. If a customer's city needs to be updated, it must be changed in multiple rows, increasing the risk of errors.

Normalization helps solve these problems by breaking the data into separate tables such as customers, products, orders, and order_items. This ensures that each piece of information is stored only once, improving data consistency and reducing redundancy.

Additionally, normalization improves data integrity by enforcing relationships using primary and foreign keys. It also makes the database more scalable and efficient for querying. For instance, retrieving customer-specific or product-specific data becomes much easier and faster.

Therefore, normalization is not over-engineering but a necessary step to ensure accuracy, maintainability, and efficiency in database systems.

### Insert Anomaly
In the orders_flat.csv dataset, new data such as a product or customer cannot be inserted independently without creating an order. This leads to unnecessary or incomplete records if we want to store standalone information.

### Update Anomaly
Customer information is repeated across multiple rows. For example, the same customer_id appears in multiple orders. Updating customer details requires modifying multiple rows, which can lead to inconsistencies if some rows are not updated correctly.

### Delete Anomaly
Deleting an order can result in loss of important information. If a customer has only one order and that order is deleted, all information about that customer is also lost. Similarly, product data may also be lost if it exists only in that record.
## Anomaly Analysis
Insert Anomaly:
In the dataset, a new product cannot be added without creating an order entry. For example, there is no separate column or table to store products independently, as product information (ProductName, Price) only exists within order rows such as Row 2 and Row 3.
Update Anomaly:
Customer details are repeated across multiple rows. For example, the same customer appears in Row 2 and Row 5 under columns CustomerName and City. If the city changes, all such rows must be updated, otherwise inconsistencies will occur.
Delete Anomaly:
If a row is deleted, important data may be lost. For example, deleting Row 4 removes all information about that product since product details (ProductName, Price) exist only within that row.
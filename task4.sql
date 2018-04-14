SELECT Customers.companyName AS Company, ARRAY_AGG(Orders.orderId) AS Orders
FROM Customers LEFT JOIN Orders ON Customers.customerId = Orders.customerId
GROUP BY companyName
ORDER BY companyName ASC

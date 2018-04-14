SELECT Suppliers.companyName AS Company, Products.productName AS Product, Products.unitPrice AS Price 
FROM Suppliers INNER JOIN Products ON suppliers.supplierid=Products.supplierid
LEFT JOIN Products AS Products2 On Products.supplierId=Products2.supplierId
	AND Products.unitPrice < Products2.unitPrice
WHERE Products2.productId iS NULL
ORDER BY Price DESC, Product, Company;

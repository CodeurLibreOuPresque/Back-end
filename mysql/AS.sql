/* 
Les alias SQL sont utilisés pour donner une table, ou une colonne dans une table, un nom temporaire. 
Les alias sont souvent utilisés pour rendre les noms de colonne plus lisibles. 
Un alias n'existe que pour la durée de la requête
*/

SELECT column_name AS alias_name
FROM table_name;

FROM table_name AS alias_name;

SELECT CustomerID as ID, CustomerName AS Customer
FROM Customers;

SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers;

SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName="Around the Horn" AND Customers.CustomerID=Orders.CustomerID;


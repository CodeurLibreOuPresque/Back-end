// Permet de mettre une condition spécifique à un critére de recherche textuel
// % représente 0, 1 ou une plus caratére
// _ représente 1 seul caractére

SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

SELECT * FROM Customers
WHERE CustomerName LIKE '%a';

SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'a%';

// MIN Retourne la plus petite valeur d'une colonne selectionée
// MAX Retourne la plus grande valeur d'une colonne selectionée

SELECT MIN(column_name)
FROM table_name
WHERE condition;

SELECT MAX(column_name)
FROM table_name
WHERE condition;

SELECT MIN(Price) AS SmallestPrice
FROM Products;

SELECT MAX(Price) AS LargestPrice
FROM Products;


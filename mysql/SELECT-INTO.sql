// L'instruction SELECT INTO copie les données d'une table dans une nouvelle table.

SELECT *
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;

SELECT column1, column2, column3, ...
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;

SELECT * INTO CustomersBackup2017
FROM Customers;

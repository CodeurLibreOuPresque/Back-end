// Selectionner les lignes d'une table, dont tel colonne à des valeurs NULL ou non

SELECT column_names
FROM table_name
WHERE column_name IS NULL;

SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;

SELECT LastName, FirstName, Address FROM Persons
WHERE Address IS NOT NULL;

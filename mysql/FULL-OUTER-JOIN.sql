//Le mot clé FULL OUTER JOIN renvoie tous les enregistrements lorsqu'il existe
// une correspondance dans les enregistrements de table left (table1) ou right (table2).

SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2 ON table1.column_name = table2.column_name;

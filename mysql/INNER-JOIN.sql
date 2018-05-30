// Le mot clé INNER JOIN sélectionne les enregistrements qui ont des valeurs 
// correspondantes dans les deux tables.

SELECT column_name(s)
FROM table1
INNER JOIN table2 ON table1.column_name = table2.column_name;

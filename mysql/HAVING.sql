// La clause HAVING a été ajoutée à SQL car le mot clé WHERE n'a pas pu être utilisé 
// avec les fonctions d'agrégation.

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);

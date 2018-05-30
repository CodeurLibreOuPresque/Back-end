// Les opérateurs ANY et ALL sont utilisés avec une clause WHERE ou HAVING. 
// L'opérateur ANY renvoie true si l'une des valeurs de la sous-requête répond à la condition. 
// L'opérateur ALL renvoie true si toutes les valeurs de sous-requêtes répondent à la condition.

SELECT column_name(s)
FROM table_name
WHERE column_name operator ANY
(SELECT column_name FROM table_name WHERE condition);

SELECT column_name(s)
FROM table_name
WHERE column_name operator ALL
(SELECT column_name FROM table_name WHERE condition);

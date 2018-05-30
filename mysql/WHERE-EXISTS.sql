// L'opérateur EXISTS est utilisé pour tester l'existence de tout enregistrement dans une sous-requête. 
// L'opérateur EXISTS renvoie true si la sous-requête renvoie un ou plusieurs enregistrements. 

SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);

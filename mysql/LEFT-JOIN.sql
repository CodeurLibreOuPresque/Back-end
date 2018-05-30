// Le mot clé LEFT JOIN renvoie tous les enregistrements de la table de gauche (table1) 
// et les enregistrements correspondants de la table de droite (table2). 
// Le résultat est NULL du côté droit, s'il n'y a pas de correspondance.

SELECT column_name(s)
FROM table1
LEFT JOIN table2 ON table1.column_name = table2.column_name;

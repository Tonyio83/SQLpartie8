-- exercice 1 : Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
SELECT languages.name AS `language`, frameworks.name AS `frameworks`
FROM `languages`
LEFT JOIN `frameworks`
ON languages.id = `languagesId`;
-- exercice 2 : Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.
SELECT languages.name AS `language`, frameworks.name AS `frameworks`
FROM `languages`
INNER JOIN `frameworks`
ON languages.id = `languagesId`;
-- exercice 3 : Afficher le nombre de framework qu'a un langage.
SELECT languages.name AS `language`, COUNT(frameworks.Id) AS `number_framework`
FROM `languages`
LEFT JOIN `frameworks`
ON languages.id = `languagesId`
GROUP BY languages.name;
-- exercice 4 : Afficher les langages ayant plus de 3 frameworks.
SELECT l.name AS `language`
FROM `languages` AS `l`
RIGHT JOIN `frameworks` AS `f`
ON l.id = f.`languagesId`
GROUP BY l.name
HAVING COUNT(f.id) > 3;

-- exercice 1 : Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
SELECT languages.name AS `language`, frameworks.name AS `frameworks`
FROM `languages`
LEFT JOIN `frameworks`
ON languages.id = `languagesId`;
-- exercice 2 : Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.
SELECT languages.name AS `language`, frameworks.name AS `frameworks`
FROM `languages`
RIGHT JOIN `frameworks`
ON languages.id = `languagesId`;
-- exercice 3 : Afficher le nombre de framework qu'a un langage.
SELECT languages.name AS `language`, COUNT(frameworks.languagesId) AS `number_framework`
FROM `languages`
LEFT JOIN `frameworks`
ON languages.id = `languagesId`
GROUP BY languages.name;
-- exercice 4 : Afficher les langages ayant plus de 3 frameworks.
SELECT languages.name AS `language`
FROM `languages`
RIGHT JOIN `frameworks`
ON languages.id = `languagesId`
GROUP BY languages.name
HAVING COUNT(frameworks.languagesId) > 3;

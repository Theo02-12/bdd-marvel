# bdd-marvel
## les titres et dates de sortie des films du plus récent au plus ancien:

```sql
SELECT films.titre_Entite,films.anneeSortie_Films FROM films ORDER BY anneeSortie_Films DESC;
```

## les noms, prénoms et âges des acteurs ou actrices de plus de 30 ans dans l'ordre alphabetique:

```sql
SELECT nom_Acteur_actrice, prenom_Acteur_actrice, TIMESTAMPDIFF(YEAR, dateNaissance_Acteur_actrice, CURDATE()) AS age 
FROM Acteur_actrice 
WHERE TIMESTAMPDIFF(YEAR, dateNaissance_Acteur_actrice, CURDATE()) > 30 
ORDER BY nom_Acteur_actrice, prenom_Acteur_actrice ASC;
```

## la liste des actrices ou acteurs principaux pour un film donné:
```sql
SELECT films.titre_Entite,Acteur_actrice.nom_Acteur_actrice,Acteur_actrice.prenom_Acteur_actrice 
FROM joue JOIN films ON joue.id_films=films.id_films
JOIN Acteur_actrice
ON joue.id_Acteur_actrice=Acteur_actrice.id_Acteur_actrice WHERE films.titre_Entite='avengers'
```
## la liste des films pour une actrice ou un acteur donné:
```sql
SELECT Acteur_actrice.nom_Acteur_actrice,Acteur_actrice.prenom_Acteur_actrice,films.titre_Entite
FROM joue JOIN Acteur_actrice ON joue.id_Acteur_actrice=Acteur_actrice.id_Acteur_actrice
JOIN films
ON joue.id_films=films.id_films WHERE Acteur_actrice.nom_Acteur_actrice='Holland' AND Acteur_actrice.prenom_Acteur_actrice='Tom'
```

## ajouter un film:
```sql
INSERT INTO films(titre_Entite, anneeSortie_Films, duree_Films) VALUES('Iron Man', 2009, 139);
```
## Ajouter un acteur:
```sql
INSERT INTO Acteur_actrice(nom_Acteur_actrice, prenom_Acteur_actrice, role_Acteur_actrice, dateNaissance_Acteur_actrice) VALUES('Evans', 'Chris', 'Captain America', '1981/06/13');
```
## Modifier un film:
```sql
UPDATE films SET titre_Entite='Avengers End Game', anneeSortie_Films=2019 WHERE id_films=1;
```
## Supprimer un acteur:
```sql
DELETE FROM joue
WHERE id_Acteur_actrice IN (SELECT id_Acteur_actrice FROM Acteur_actrice WHERE id_Acteur_actrice=1);
DELETE FROM Acteur_actrice WHERE id_Acteur_actrice=1;
```
## afficher les 3 derniers acteurs/actrices ajouté(e)s:
```sql
SELECT nom_Acteur_actrice, prenom_Acteur_actrice FROM Acteur_actrice ORDER BY date_creation DESC LIMIT 3;

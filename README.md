## Lancement

Il est recommandé d'utiliser un environnement Ubuntu (ou au moins un terminal Ubuntu sur Windows). Pour utiliser l'application, veuillez lancer le script launch.sh à la racine du projet. Docker est nécessaire.

![image](https://github.com/Stickysticky/PlusQuePro/assets/23642565/9b2ce4a0-3c7e-4387-b777-dfa74f09b052)

En cas de problème lié au données, le fichier db.sql est une sauvegarde de la base de données.

## Utilisation

Pour utiliser l'application, il faudra se rendre sur http://localhost avec un navigateur avec une vérification CORS désactivée.

![image](https://github.com/Stickysticky/PlusQuePro/assets/23642565/53a79670-9bab-4e16-b32a-f53a8dbce1b4)

Une fois le compte créé ou après une connexion si le compte a déjà été créé, vous pouvez voir les films tendances. Les données sont mises à jour une fois par jour mais il est possible de forcer la mise à jour via les commandes suivantes:

./vendor/bin/sail artisan app:store-trending-week-movies

./vendor/bin/sail artisan app:store-trending-day-movies

![image](https://github.com/Stickysticky/PlusQuePro/assets/23642565/12767358-971c-4f85-af2d-fe2e676909b6)

Pour voir le détail d'un film, il faut cliquer sur celui-ci:

![image](https://github.com/Stickysticky/PlusQuePro/assets/23642565/b31dd61e-3976-4d95-a352-d7bf0ec0fb33)

La base de données est visible depuis http://localhost:8081/ (id: root, password: password)

## CRUD API

Il est possible de récupérer, ajouter, supprimer et modifier les films de la base de données via les routes dédiées. Pour les routes POST, DELETE et PATCH, il faudra cependant ajouter le token CSRF (X-CSRF-TOKEN) via le header.

![image](https://github.com/Stickysticky/PlusQuePro/assets/23642565/b1c3f7ec-7678-41a9-9ff2-19ab40143f84)


![image](https://github.com/Stickysticky/PlusQuePro/assets/23642565/5bcf5378-d509-4288-b4ec-a4ea90911a70)


![image](https://github.com/Stickysticky/PlusQuePro/assets/23642565/69a13c03-1820-4494-ab44-9f1499c221ae)


![image](https://github.com/Stickysticky/PlusQuePro/assets/23642565/890127c1-1697-4c22-8775-1c02e73b0f2d)


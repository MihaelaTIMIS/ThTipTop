# Présentation du projet
Ce repository contient le projet ThéTipTop reparti en deux parties : 
 - Un partie **backend** réalisé en **Laravel 8** contenant. Elle contient l'api qui alimente la partie front ainsi que la partie administration
 - Une partie **frontend** réalisé en **Angular 11**

Pour en savoir plus sur chaque partie, veuillez lire le fichier README.md contenu dans chaque dossier.
***

# Lancement des services
Les différentes parties du projets sont lancées dans des containers dockers.
A la racine du dossier TheThiThop, vous trouverez un fichier `docker-compose.yaml` où sont déclarer les services. 
Suivez ces étapes pour lancer le projet :

0. Mettez-vous à la racine du dossier TheTipTop
1. Vérifier que vous y avez bien le fichier `.env.docker-compose.example`
2. Créez-y un fichier `.env` puis copiez le contenu du fichier `.env.docker-compose.example` dans le fichier `.env` et configurez les variables d'environnement.<br/>
   <span style="color:red">**NB** : NE PAS MODIFER LES VARIABLE D'ENVIRONNEMENT AYANT DÉJÀ UNE VALEUR</span>
3. Lancer un terminal et mettez-vous à la racine du dossier TheTipTop
4. Exécuter la commande `docker-compose up -d`
5. Exécuter la commande `docker-compose ps`, pour vérifier bien que les containers : `backend-container`, `frontend-container`, `mysql-container`, `nginx-container`, `phpmyadmin-container` sont bien lancés.
6. Se rendre dans `backend-container` en exécutant cette commande : `docker exec -it backend-container /bin/bash`
7. Une fois à l'intérieur du container, exécuter les commandes : 
   - `composer install` : installe les dépendances du projet Laravel
   - `php artisan key:generate` : Génère une clé pour le projet
   - `php artisan migrate` : Lance les migrations de Laravel
8. Sortez du `backend-container` en tapant la commande `exit`

***


# Accéder aux services dans le navigateur :
Si vous n'avez pas modifié le port host des services dans le fichier docker-compose, vous pouvez 
accéder aux services dans votre navigateur à partir de ces urls  : 
- backend : http://localhost:8080/
- frontend : http://localhost:4200/
- phpmyadmin: http://localhost:8081/

***

# Ressources utilises : 
- Docker Get Started : https://www.docker.com/get-started
- Docker compose : https://docs.docker.com/compose/
- Laravel official doc : https://laravel.com/docs/8.x
- Angular official doc : https://angular.io/docs
# ThTipTop

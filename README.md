# test-resto

## Pré-requis

Après avoir cloné le projet, il faut taper à l'invite de commande :

    composer install
    
Ceci installera tous les composants utilisés dans ce projet.

## Configuration BDD

Modifier les paramètres de connexion à la BDD à la ligne 27 du fichier **.ENV** (*db_user*, *db_password*). La base de données s'appelle *test_resto*.

Exemple avec *root* comme utilisateur et sans mot de passe :

    DATABASE_URL=mysql://root:@127.0.0.1:3306/test_resto

Il faudra aussi importer la base de données avec le fichier *test_resto.sql*

## Lancement serveur local

Après avoir configuré la BDD, taper à l'invite de commande pour lancer le serveur :

    php bin/console server:run
    
Vous pouvez vous rendre à l'adresse *localhost:8000*
# test-resto

## Pr�-requis

Apr�s avoir clon� le projet, il faut taper � l'invite de commande :

    composer install
    
Ceci installera tous les composants utilis�s dans ce projet.

## Configuration BDD

Modifier les param�tres de connexion � la BDD � la ligne 27 du fichier **.ENV** (*db_user*, *db_password*). La base de donn�es s'appelle *test_resto*.

Exemple avec *root* comme utilisateur et sans mot de passe :

    DATABASE_URL=mysql://root:@127.0.0.1:3306/test_resto

Il faudra aussi importer la base de donn�es avec le fichier *test_resto.sql*

## Lancement serveur local

Apr�s avoir configur� la BDD, taper � l'invite de commande pour lancer le serveur :

    php bin/console server:run
    
Vous pouvez vous rendre � l'adresse *localhost:8000*
# test-resto

##Création BDD

Avant de créer la BDD, il faut modifier les paramètres de connexion à la BDD à la ligne 27 du fichier **.ENV** (*db_user*, *db_password*). La base de données s'appellera *test_resto*.

Exemple avec *root* comme utilisateur et sans mot de passe :

    DATABASE_URL=mysql://root:@127.0.0.1:3306/test_resto

A l'invite de commande, taper :

    php bin/console doctrine:database:create
    

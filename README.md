# test-resto

##Cr�ation BDD

Avant de cr�er la BDD, il faut modifier les param�tres de connexion � la BDD � la ligne 27 du fichier **.ENV** (*db_user*, *db_password*). La base de donn�es s'appellera *test_resto*.

Exemple avec *root* comme utilisateur et sans mot de passe :

    DATABASE_URL=mysql://root:@127.0.0.1:3306/test_resto

A l'invite de commande, taper :

    php bin/console doctrine:database:create
    

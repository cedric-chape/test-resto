<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use App\Entity\Restaurant;

class RestaurantFixture extends Fixture
{
    public function load(ObjectManager $manager)
    {
        //Création de 10 restaurants
        $names = array (
            'SoGood',
            'Pomme de Pain',
            'Alexens',
            'Made In Me',
            'Nostrum',
            'Kok Piraat',
            'Le Switch Ou Bien',
            'Pick It Up',
            'Kilometre 200',
            'En Famille'
        );
        foreach ($names as $name)
        {
            $restaurant = new Restaurant();
            $restaurant->setName($name);
            $manager->persist($restaurant);
        }

        $manager->flush();
    }
}

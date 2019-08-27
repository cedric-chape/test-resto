<?php
namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Restaurant;


class RestaurantController extends AbstractController
{
    /**
     * @Route("/show-{id}", name="restaurant.show")
     * @param Restaurant $restaurant
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function show(Restaurant $restaurant)
    {
        $horaires = $restaurant->getHoraires();
        return $this->render('show.html.twig', [
            'restaurant' => $restaurant,
            'horaires' => $horaires
        ]);
    }
    
}
<?php
namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Repository\RestaurantRepository;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     * @param RestaurantRepository $repo
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(RestaurantRepository $repo)
    {
        $restaurants = $repo->findLatest();
        return $this->render('home.html.twig',[
            'restaurants' => $restaurants           
        ]);
    }
}
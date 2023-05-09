<?php

namespace App\Controller;

use App\Model\AdoptDogManager;

class AdoptdogController extends AbstractController
{
    /**
     * Display home page
     */
    public function index(): string
    {
        $adoptDogManager = new AdoptDogManager();
        $dogs = $adoptDogManager->selectAll('name');

        return $this->twig->render('Adoptdog/index.html.twig', [
            'dogs' => $dogs
        ]);
    }
}

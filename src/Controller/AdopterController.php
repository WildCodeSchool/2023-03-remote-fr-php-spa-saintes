<?php

namespace App\Controller;

class AdopterController extends AbstractController
{
    /**
     * Display home page
     */
    public function index(): string
    {
        return $this->twig->render('Adopter/index.html.twig');
    }
}

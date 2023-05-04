<?php

namespace App\Controller;

class AdoptdogController extends AbstractController
{
    /**
     * Display home page
     */
    public function index(): string
    {
        return $this->twig->render('Adoptdog/index.html.twig');
    }
}

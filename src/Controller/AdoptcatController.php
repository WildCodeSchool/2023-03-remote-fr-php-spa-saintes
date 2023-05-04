<?php

namespace App\Controller;

class AdoptcatController extends AbstractController
{
    /**
     * Display home page
     */
    public function index(): string
    {
        return $this->twig->render('Adoptcat/index.html.twig');
    }
}

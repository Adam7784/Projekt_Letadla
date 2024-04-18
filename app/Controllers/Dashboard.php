<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use \IonAuth\Libraries\IonAuth;
use Psr\Log\LoggerInterface;

class Dashboard extends BaseController
{
    var $ionAuth;

    public function initController(RequestInterface $request, ResponseInterface $response, LoggerInterface $logger)
    {
        parent::initController($request, $response, $logger);
        $this->ionAuth = new IonAuth();
    }

    public function index()
    {
        
    }
    }


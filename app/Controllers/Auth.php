<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use \IonAuth\Libraries\IonAuth;
use Psr\Log\LoggerInterface;



class Auth extends BaseController
{
    var $ionAuth;

    public function initController(RequestInterface $request, ResponseInterface $response, LoggerInterface $logger)
    {
        parent::initController($request, $response, $logger);
        $this->ionAuth = new IonAuth();
    }


    /**
     *  vykreslí přihlašovací formulář
     */
    public function login()
    {
        $data["message"] = $this->session->message;
        echo view('loginForm', $data);
    }

    /**
     * zpracuje data z přihlašovacího formuláře
     */
    public function loginComplete()
    {
        $login = $this->request->getPost('email');
        $password = $this->request->getPost('pswd');

        $logged = $this->ionAuth->login($login, $password);

        if ($logged) {
            return redirect()->to('admin/dash');
        } else {
            $this->session->setFlashdata('message', 'Zase jsi to dojebal ty pitomče');
            return redirect()->to('login');
        }
    }

    public function register()
    {
        echo view('registerForm');
    }

    public function registerComplete()
    {
        $first_name = $this->request->getPost('first_name');
        $last_name = $this->request->getPost('last_name');
        $username = $this->request->getPost('username');
        $email = $this->request->getPost('email');
        $password = $this->request->getPost('pswd');
        $pswd_again = $this->request->getPost('pswd_again');
        $data = array(
            'first_name' => $first_name,
            'last_name' => $last_name,
            'username'  => $username
        );
        $register = $this->ionAuth->register($username, $password, $email, $data);

        if (!$register) {
            return redirect()->to('registrace');
        } else {
            $this->ionAuth->login($email, $password);
            return redirect()->to('admin/dash');
        }
    }
}

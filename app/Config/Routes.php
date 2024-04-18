<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');

$routes->get('login','Auth::login');
$routes->post('login-complete', 'Auth::loginComplete');


$routes->group('admin', ['filter' => 'auth'], static function ($routes) {
    $routes->get('dash', 'Dashboard::index');
});

$routes->get('registrace', 'Auth::register');
$routes->post('registrace-complete', 'Auth::registerComplete');

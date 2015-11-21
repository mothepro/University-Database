<?php
require '../vendor/autoload.php'; // Composer
require '../propel.php'; // Propel

// Application & Routes
$app = new \Slim\Slim;
$app->router = unserialize( file_get_contents('../routes.ser') );

// View
$view = new \Slim\Views\Twig();
$view->setTemplatesDirectory('../tpl');
$view->parserExtensions = [
	new \Slim\Views\TwigExtension(),
];
$app->view( $view );

// GO
$app->run();
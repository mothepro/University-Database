<?php
require '../vendor/autoload.php'; // Composer
require '../propel.php'; // Propel

// Application & Routes
$app = new \Slim\Slim;
$app->router = unserialize( file_get_contents('../routes.ser') );

// View
$app
	->view( new \Slim\Views\Twig() )
	->setTemplatesDirectory('../tpl');
$app->view()->parserExtensions = [
	new \Slim\Views\TwigExtension(),
];

// GO
$app->run();
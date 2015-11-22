<?php
namespace App;

/**
 * The Queries we must run to accomplish the goals
 * of the assignment
 *
 * @author Maurice Prosper <maurice.prosper@ttu.edu>
 */
abstract class Query {
	/**
	 * Report of Halls and their Managers
	 * @return Hall[]
	 */
	public static function one() {
		return \App\Entity\HallQuery::create()
			->joinWith('Hall.Staff')
			->find()->toArray();
	}
	
	/**
	 * Report of Leases in summer
	 * @return Lease[]
	 */
	public static function three() {
		return \App\Entity\LeaseQuery::create()
			->filterBySemesterduration(Entity\Map\LeaseTableMap::COL_SEMESTERDURATION_SUMMER);
	}
	
	/**
	 * Show the home page template
	 */
	public static function home() {
		$app = \Slim\Slim::getInstance();
		$app->render('home.twig');
	}
	
	/**
	 * We are going to run the API command,
	 * then output the contents in API template
	 * @param \Slim\Route $route
	 */
	public static function show(\Slim\Route $route) {
		$app = \Slim\Slim::getInstance();
		$old = $route->getCallable();

		$route->setCallable(function () use ($app, $old, $route) {
			try { // call original route
				$ret = call_user_func_array(
						$old,
						array_values($route->getParams())
					);
			} catch (\Exception $e) {
				$app->response->setStatus(500);
			}

			// template
			$app->view()->set('data', $ret);
			$app->render( $route->getParam('tpl') . '.twig');
		});
	}
}

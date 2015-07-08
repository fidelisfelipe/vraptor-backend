	/**
	 * APP
	 * */

	var app = angular.module('vida', ['controllers-ctrl','services-srv']);	

	var nameVarInject = '$scope';
	var nameHttpInject = '$http';
	
	/**
	 * Controllers
	 * */
	
	var controllers = angular.module('controllers-ctrl',[]);
	
	/**
	 * Services
	 * */
	
	var services = angular.module('services-srv',[]);
	

/** rotas
sampleApp.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/uri-callback', {
	templateUrl: 'templates/add_order.html',
	controller: 'controller1'
      }).
      when('/uri-calback2', {
	templateUrl: 'templates/show_orders.html',
	controller: 'controller2'
      }).
      otherwise({
	redirectTo: '/AddNewOrder'
      });
}]);
**/
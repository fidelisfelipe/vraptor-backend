	/**
	 * Controllers
	 * */
	
	var controllers = angular.module('controllers-ctrl',[]);

	/**
	 * Ctrl Account
	 **/

	controllers.controller('top-ctrl', [nameVarInject, setAccountCtrl]);
	function setAccountCtrl(scope){
		console.log("top-ctrl");
		scope.title = "Vida";
		scope.href = "#";
	}
	

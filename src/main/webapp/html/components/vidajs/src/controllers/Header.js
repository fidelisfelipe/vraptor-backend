
	/**
	 * Ctrl Header
	 **/

	controllers.controller('header-ctrl', [nameVarInject, setAccountCtrl]);
	function setAccountCtrl(scope){
		console.log("header-ctrl");
		scope.title = "Vida";
	}
	

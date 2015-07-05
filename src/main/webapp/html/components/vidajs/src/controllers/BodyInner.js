
	/**
	 * Ctrl Header
	 **/

	controllers.controller('body-inner-ctrl', [nameVarInject, setBodyInnerCtrl]);
	function setBodyInnerCtrl(scope){
		console.log("body-inner-ctrl");
		scope.imgProfileBackground = "html/img/imgProfileBackground.png",
		scope.imgProfile = "html/img/profileimg.png",
		scope.name = "Fidelis Guimarães";
		scope.msgProfile = "Água é saúde...";
	}
	

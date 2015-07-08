
	/**
	 * Service Usuario
	 **/

	services.service('serviceUsuario', [nameVarInject, serviceUsuario]);
	function serviceUsuario(scope){
		console.log("serviceUsuario");
		var sendForm = {};
		
		sendForm.send = function(){
			console.log("send form usuario");
			//submete o formulario form
			
			//retorna sucesso ou erro
			send.msg = 'Sucesso';
		}
		
		return sendForm;
	}
	
	

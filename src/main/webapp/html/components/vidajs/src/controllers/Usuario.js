
	/**
	 * Ctrl Usuario
	 **/
	controllers.controller('form-usuario-novo-ctr', [nameVarInject,nameHttpInject, setFormUsuarioNovoCtrl]);
	function setFormUsuarioNovoCtrl(scope, http){
		console.log("form-usuario-novo-ctr");
		scope.linkNew = "Novo";
		scope.titleWindow = "Usuários";
		scope.titleForm = "Novo";
		scope.labelName = "Nome";
		scope.labelPassword = "Senha";
		scope.placeName="Informe o nome";
		scope.placePassword="Informe a senha";
		scope.idName = "usuario.nome";
		scope.idPassword = "usuario.senha";
		scope.labelBtnSave = "Salvar";
		scope.labelBtnClose = "Fechar";
		scope.formData = {};
		
		scope.success = false;
		scope.fail = false;
		scope.submit = function(){
			console.log('send form usuario');
			//delegar para service
			http({
					method: 'POST',
				    url: 'usuarios/novo',
				    data: scope.formData,
				    contentType:'application/json' 
				    //headers: {'Content-Type': 'application/x-www-form-urlencoded'}
			}).success(function(data) {
				console.log('send status '+data.success);
				scope.success = true;
				swal("Sucesso", "Cadastro realizado com sucesso!", "success");				
				console.log("success:"+scope.success);
				console.log("fail:"+scope.fail);
				//scope.fail = false;
			});
			
		}
	}
	
	

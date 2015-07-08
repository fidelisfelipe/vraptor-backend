
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
		scope.submit = function(){
			console.log('send form usuario');
			//delegar para service
			http({
					method: 'POST',
				    url: 'usuarios/novo',
				    data: scope.formData,
				    headers: {'Content-Type': 'application/x-www-form-urlencoded'}
			}).success(function(data) {
				console.log('sended form usuario');
			});
		}
	}
	
	

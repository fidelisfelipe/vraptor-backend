
	/**
	 * Ctrl Top
	 **/

	controllers.controller('top-ctrl', [nameVarInject, setTopCtrl])
		.directive('ngPlaceholder', function() {
			  return {
			    restrict: 'A',
			    scope: {
			      placeholder: '=ngPlaceholder'
			    },
			    link: function(scope, elem, attr) {
			      scope.$watch('placeholder',function() {
			        elem[0].placeholder = scope.placeholder;
			      });
			    }
		  }
	});
	
	function setTopCtrl(scope){
		console.log("top-ctrl");
		scope.title = "Vida";
		scope.search = "Pesquisar";
		scope.username = "Fidelis Guimarães";
		scope.href = "#";
		scope.menuSimpleList = [{name:"Arquivo", href:"#"}];
		scope.menuDropDownList = [{name:"Arquivos", href:"#" ,
			itens:[
			       {name:"Videos", href:"#"},
			       {name:"Imagens", href:"#"},
			       {name:"Comentários", href:"#"}
			      ]
		}];
		
	}
	

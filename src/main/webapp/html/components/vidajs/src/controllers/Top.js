
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
		scope.menuSimpleList = [{name:"Usuários", href:"usuarios"},{name:"Mensagens", href:"posts"},{name:"Prescrições", href:"prescriptions"}];
		scope.menuDropDownList = [{name:"Arquivos", href:"#" ,
			itens:[
			       {name:"Videos", href:"#"},
			       {name:"Imagens", href:"#"},
			       {name:"Comentários", href:"#"}
			      ]
		}];
		scope.menuDropDownCreateList = [{name:"Criar Novo", href:"#" ,
			itens:[
			       {name:"Produto ou Item", href:"#", classIco:"fa-paper-plane-o"},
			       {name:"Blog ou Post", href:"#", classIco:"fa-font"},
			       {name:"Imagem", href:"#", classIco:"fa-file-image-o"},
			       {name:"Vídeo", href:"#", classIco:"fa-file-video-o"}
			      ]
		}];
		scope.msgCount = 5;
		scope.menuDropDownPerfilList = [{name:"Perfil", href:"#" ,
			itens:[
			       {name:"Mensagens", href:"#", classIco:"fa-inbox", count:"5"},
			       {name:"Arquivos", href:"#", classIco:"fa-file-o"},
			       {name:"Configurações", href:"#", classIco:"fa-wrench"},
			       {name:"Bloquear", href:"#", classIco:"fa-lock"},
			       {name:"Sair", href:"#", classIco:"fa-power-off"}
			      ]
		}];
		
	}
	
	
	/**
	 * Ctrl Top Right Abas
	 **/

	controllers.controller('top-right-abas-ctrl', [nameVarInject, setTopRightAbasCtrl]);
	function setTopRightAbasCtrl(scope){
		console.log("top-right-abas-ctrl");
		scope.abaList = [
		                 {name:"Hoje", href:"#today", control:"today", active: true},
		                 {name:"Tarefas", href:"#tasks", control:"tasks"},
		                 {name:"Chat", href:"#chat", control:"chat"}
		                 ];
	}
	/**
	 * Ctrl Top Right - aba left
	 **/
	
	controllers.controller('top-right-aba-left-ctrl', [nameVarInject, setTopRightAbaLeftCtrl]);
	function setTopRightAbaLeftCtrl(scope){
		console.log("top-right-aba-left-ctrl");
		scope.name = "Hoje";
		scope.href = "#";
		scope.control = "today";
		scope.active = true;
		scope.newTitle = "Novo";
		scope.newActive = true;
		scope.postList = [{
			name: "Inicio do Desenvolvimento",
			desc:"Iniciamos o desenvolvimento do Prototipo nesta semana. Hoje é sábado e muita coisa evoluíu", 
			classType:"sucess", //types: danger, success, info, warning
			nameType:"Ordem", 
			control:"today", 
			active: true, 
			dateExt: "04 de Julho"
		}];
		
	}
	/**
	 * Ctrl Top Right - aba middle
	 **/
	
	controllers.controller('top-right-aba-middle-ctrl', [nameVarInject, setTopRightAbaMiddleCtrl]);
	function setTopRightAbaMiddleCtrl(scope){
		console.log("top-right-aba-middle-ctrl");
		scope.name = "Tarefas";
		scope.href = "#";
		scope.control = "tasks";
		scope.active = false;
		scope.today = "Hoje";
		scope.tasksTodayList = [{
			id: 1,
			label: "Agendar Exame",
			time: "10:00",
			type: "success"//types: primary, danger, success, info, warning
		}];
		scope.tomorrow = "Amanhã",
		scope.tasksTomorrowList = [{
			id: 2,
			label: "Confirmar Agendamento de Exame",
			time: "09:00",
			type: "info"//types: primary, danger, success, info, warning
		}];
		scope.chat = "Chat",
		scope.tasksTomorrowList = [{
			id: 2,
			label: "Confirmar Agendamento de Exame",
			time: "09:00",
			type: "info"//types: primary, danger, success, info, warning
		}];
		
	}
	/**
	 * Ctrl Top Right - aba right
	 **/
	
	controllers.controller('top-right-aba-right-ctrl', [nameVarInject, setTopRightAbaRightCtrl]);
	function setTopRightAbaRightCtrl(scope){
		console.log("top-right-aba-right-ctrl");
		scope.name = "Chat";
		scope.titleOnline = "Pessoas Online",
		scope.qtdOnline = 3
		scope.href = "#";
		scope.control = "chat";
		scope.name = "Chat";
		scope.titleOffline = "Pessoas Offline",
		scope.qtdOffline = 3,
		scope.tasksTodayList = [{
			id: 1,
			label: "Agendar Exame",
			time: "10:00",
			type: "success"//types: primary, danger, success, info, warning
		}];	
		scope.memberOnlineList = [{
			href: "#",
			name: "Fidelis Guimarães",
			city: "Brasilia - DF",
			status: "online", //online, busy, away, 
			photo: "html/img/profileimg.png",
			time: "09:00",
			type: "info"//types: primary, danger, success, info, warning
		}];
		scope.memberOfflineList = [{
			href: "#",
			name: "Jone",
			city: "Brasilia - DF",
			status: "offline", //online, busy, away, 
			photo: "html/img/profileimg5.png",
			time: "09:00",
			type: "info"//types: primary, danger, success, info, warning
		}];
		scope.tasksTomorrowList = [{
			id: 2,
			label: "Confirmar Agendamento de Exame",
			time: "09:00",
			type: "info"//types: primary, danger, success, info, warning
		}];
		titleSearch = "Buscar Contatos"
		
	}
	/**
	 * Ctrl Top Left - Menu
	 **/
	
	controllers.controller('top-left-ctrl', [nameVarInject, setTopLeftCtrl]);
	function setTopLeftCtrl(scope){
		console.log("top-left-ctrl");
		scope.name = "Principal",
		scope.labelInit = "Inicio Des";
		scope.labelEnd = "Fim Des";
		scope.porcent = "10";
		scope.titlePorcent = "% concluído";
		scope.menuList = [{
			total: 1,
			label: "Painel de Controles",
			href:"html/index.html",
			type: "home"//types: home, chart
		},
		{
			total: 2,
			label: "Gráficos",
			href:"html/charts.html",
			type: "bar-chart"
		}];
		scope.menuSubList = [{
			total: 1,
			label: "Elementos",
			href:"#",
			type: "home",//types: home, chart, 
  			itens:[
  			       {label:"Icones", href:"html/icons.html"},
  			       {label:"Icones Novos", href:"html/icons.html"}
  			      ]//<span class="label label-danger">NEW</span>"
	    }];
	}

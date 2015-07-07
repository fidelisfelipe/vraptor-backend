
	/**
	 * Ctrl Header
	 **/

	controllers.controller('body-inner-ctrl', [nameVarInject, setBodyInnerCtrl]);
	function setBodyInnerCtrl(scope){
		console.log("body-inner-ctrl");
		scope.imgProfileBackground = "html/img/imgProfileBackground.png";
		scope.imgProfile = "html/img/profileimg.png";
		scope.name = "Fidelis Guimarães";
		scope.msgProfile = "Água é saúde...";
		scope.sumList = [{
			id: 1,
			label: "Fotos",
			val: "123",
			time: "1",
			type: "info"//types: primary, danger, success, info, warning
		},
		{
			id: 2,
			label: "Video",
			val: "456",
			time: "1",
			type: "info"//types: primary, danger, success, info, warning
		}];
		scope.btnList = [{
			id: 2,
			label: "Prescrição",
			control: "plus",
			type: "success",
			href: "prescriptions"
		}];
		scope.btnSendEvent = [{
			id: 1,
			label: "Comentar",
			control: "plus",
			type: "success"//thumbs-o-up, comment-o, share-square-o
		}];
		scope.btnEventList = [{
			id: 1,
			label: "Curtir",
			type: "thumbs-o-up"//thumbs-o-up, comment-o, share-square-o
		},
		{
			id: 2,
			label: "Comentar",
			type: "comment-o"//thumbs-o-up, comment-o, share-square-o
		},
		{
			id: 2,
			label: "Publicar",
			type: "share-square-o"//thumbs-o-up, comment-o, share-square-o
		}];
		scope.labelComment= "Comentar...";
		scope.postList = [{
			id: 1,
			href:"#",
			name: "João Neves",
			time: "1 dia atrás",
			type: "info",//types: primary, danger, success, info, warning
			origin: "via Mobile",
			city: "Brasilia",
			cityCode: "DF",
			isImg: true,
			imgProfile: "html/img/profileimg2.png",
			img: "html/img/example1.jpg",
			text: "Ofereço orientação nutricional completa para alto desempenho esportivo."
		},{
			id: 2,
			href:"#",
			name: "João Pedro",
			time: "1 dia atrás",
			type: "info",//types: primary, danger, success, info, warning
			origin: "via Mobile",
			city: "Curitiba",
			imgProfile: "html/img/profileimg3.png",
			cityCode: "DF",
			isImg: false,
			text: "Ofereço orientação nutricional completa para alto desempenho esportivo."
		},
		{
			id: 3,
			href:"#",
			name: "Amaral",
			time: "1 dia atrás",
			type: "info",//types: primary, danger, success, info, warning
			origin: "via Mobile",
			city: "Ceilândia",
			imgProfile: "html/img/profileimg4.png",
			cityCode: "DF",
			isImg: false,
			text: "alguém acordado por ae?"
		}];
	}
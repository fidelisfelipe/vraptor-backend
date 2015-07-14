package br.com.caelum.vraptor.sysweb.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletContext;

import br.com.caelum.vraptor.Consumes;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.sysweb.business.UsuariosLogic;
import br.com.caelum.vraptor.sysweb.model.Usuario;
import br.com.caelum.vraptor.sysweb.util.ControllerUtil;
import br.com.caelum.vraptor.view.Results;
@Path("/usuarios")
@Controller
public class UsuariosController {

	private final Result result;
	private final UsuariosLogic logic;
	private final ServletContext contexto;
	/**
	 * @deprecated CDI eyes only
	 */
	protected UsuariosController() {
		this(null, null, null);
	}
	
	@Inject
	public UsuariosController(Result result, UsuariosLogic logic, ServletContext contexto) {
		this.result = result;
		this.logic = logic;
		this.contexto = contexto;
	}
	@Get
	@Path({"","/"})
	public void index() {
		result.include("isList", true);
		result.include("contexto", ControllerUtil.getContexto(this.getClass()));
		List<Usuario> usuarioList = logic.listAll();
		result.use(Results.json()).withoutRoot().from(usuarioList).serialize();
	}
	@Consumes("application/json")
	@Post
	@Path("/novo")
	public void index(Usuario usuario){
		
		result.use(Results.json()).withoutRoot().from("sucesso").serialize();
		System.out.println(usuario);
	}
	@Get
	@Path("/{id}")
	public void index(Integer id){
		
		result.use(Results.json()).withoutRoot().from("sucesso").serialize();
		System.out.println(id);
	}
	@Get
	@Path("/json")
	public void listUsers(){
		List<Usuario> usuarioList = logic.listAll();
		result.use(Results.json()).withoutRoot().from(usuarioList).serialize();
	}
}
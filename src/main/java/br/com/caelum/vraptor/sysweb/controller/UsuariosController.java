package br.com.caelum.vraptor.sysweb.controller;

import javax.inject.Inject;
import javax.servlet.ServletContext;

import br.com.caelum.vraptor.Consumes;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.sysweb.business.UsuariosLogic;
import br.com.caelum.vraptor.sysweb.model.Usuario;
import br.com.caelum.vraptor.sysweb.util.ControllerUtil;
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

	@Path({"","/"})
	public void index() {
		result.include("isList", true);
		result.include("contexto", ControllerUtil.getContexto(this.getClass()));
	}
	@Consumes("application/json") 
	@Path("/novo")
	public void index(Usuario usuario){
		result.nothing();
		System.out.println(usuario);
	}
}
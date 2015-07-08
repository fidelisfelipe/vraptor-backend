package br.com.caelum.vraptor.sysweb.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class IndexController {

	private final Result result;
	private HttpServletRequest req;
	/**
	 * @deprecated CDI eyes only
	 */
	protected IndexController() {
		this(null, null);
	}
	
	@Inject
	public IndexController(Result result, HttpServletRequest req) {
		this.result = result;
		this.req = req;
	}

	@Path("/")
	public void indexLife() {
		result.include("variable", "VRaptor!");
	}
	@Path("/posts")
	public void indexPost() {
		result.include("variable", "VRaptor!");
	}
	@Path("/prescriptions")
	public void indexPrescription() {
		result.include("variable", "VRaptor!");
	}
	
}
package br.com.caelum.vraptor.sysweb.controller.interceptor;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.caelum.vraptor.sysweb.business.UsuariosLogic;
import br.com.caelum.vraptor.sysweb.util.ControllerUtil;

@Intercepts
public class InterceptorControllers implements Interceptor {

	private Result result;
	private ServletContext contexto;
	private ServletRequest req;

	@Deprecated
	protected InterceptorControllers(){
		this(null,null,null);
	}
	
	/**
	 * @param result
	 * @param contexto
	 * @param req
	 */
	@Inject
	public InterceptorControllers(Result result, ServletContext contexto, ServletRequest req) {
		this.result = result;
		this.contexto = contexto;
		this.req = req;
	}
	
	@Override
	public void intercept(InterceptorStack stack, ControllerMethod method,
			Object controllerInstance) throws InterceptionException {
		ControllerUtil.addContextAndPath(result, controllerInstance.getClass(), req);
	}

	@Override
	public boolean accepts(ControllerMethod method) {
		return true;
	}

}
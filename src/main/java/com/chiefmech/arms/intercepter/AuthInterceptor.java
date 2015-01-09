package com.chiefmech.arms.intercepter;

import com.chiefmech.arms.common.util.Constants;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

@SuppressWarnings("serial")
public class AuthInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext ctx = invocation.getInvocationContext();
		if (ctx.getSession().get(Constants.SESSION_USER) != null) {
			return invocation.invoke();
		} else {
			return Action.LOGIN;
		}
	}

}

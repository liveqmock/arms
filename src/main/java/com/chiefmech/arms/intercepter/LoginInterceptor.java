package com.chiefmech.arms.intercepter;

import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.chiefmech.arms.common.util.Constants;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

@SuppressWarnings("serial")
public class LoginInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext actionContext = invocation.getInvocationContext();

		Map<String, Object> session = actionContext.getSession();
		if (session != null && session.get(Constants.KEY_USER_SESSION) != null) {
			return invocation.invoke();
		} else {
			String goingToAction = "";
			String namespace = invocation.getProxy().getNamespace();
			if (StringUtils.isNotBlank(namespace) && !namespace.equals("/")) {
				goingToAction += namespace;
			}
			String actionName = invocation.getProxy().getActionName();
			if (StringUtils.isNotBlank(actionName)) {
				goingToAction += "/" + actionName;
			}

			session.put(Constants.KEY_ACTION_GOING_TO, goingToAction);
			return "login";
		}
	}
}

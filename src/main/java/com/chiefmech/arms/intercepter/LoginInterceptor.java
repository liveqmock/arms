package com.chiefmech.arms.intercepter;

import java.util.Map;

import org.apache.log4j.Logger;

import com.chiefmech.arms.action.LoginAction;
import com.chiefmech.arms.common.util.Constants;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

@SuppressWarnings("serial")
public class LoginInterceptor extends AbstractInterceptor {
	private static Logger logger = Logger.getLogger(LoginInterceptor.class
			.getName());

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> session = invocation.getInvocationContext()
				.getSession();
		if (session.get(Constants.KEY_USER_SESSION) != null
				|| invocation.getAction() instanceof LoginAction) {
			return invocation.invoke();
		} else {
			logger.debug("用户未登录，跳转登录页面");
			return "userLogin";
			// return invocation.invoke(); // For dev purpose
		}
	}
}

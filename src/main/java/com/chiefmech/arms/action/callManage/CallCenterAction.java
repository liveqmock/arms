package com.chiefmech.arms.action.callManage;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.Constants;
import com.chiefmech.arms.entity.User;
import com.chiefmech.arms.entity.query.MaillSearchBean;
import com.chiefmech.arms.service.MaillService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/callManage")
@Controller()
@Scope("prototype")
public class CallCenterAction extends BaseActionSupport implements
		ModelDriven<MaillSearchBean> {
	@Resource()
	private MaillService maillService;

	private MaillSearchBean query = new MaillSearchBean();

	@Action(value = "callCenter", results = { @Result(name = "input", location = "callCenter.jsp") })
	public String callCenter() {
		return INPUT;
	}

	@Action(value = "queryCallCenter")
	public void queryCallCenter() {
		User user = (User) servletRequest.getSession().getAttribute(
				Constants.KEY_USER_SESSION);
		this.transmitJson(maillService.getCallCenterEasyUiJson(query,
				user.getUserId()));
	}
	
	

	@Override
	public MaillSearchBean getModel() {
		return query;
	}
}

package com.chiefmech.arms.action.storeOtherManage;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.query.KuCunOperLogSearchBean;
import com.chiefmech.arms.service.KuCunService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/storeOtherManage")
@Controller()
@Scope("prototype")
public class KuCunOperLogAction extends BaseActionSupport implements
		ModelDriven<KuCunOperLogSearchBean> {

	@Resource()
	private KuCunService kuCunService;

	private KuCunOperLogSearchBean query = new KuCunOperLogSearchBean();

	@Action(value = "kuCunOperLog", results = { @Result(name = "input", location = "kuCunOperLog.jsp") })
	public String kuCunOperLog() {
		return INPUT;
	}

	@Action(value = "queryKuCunOperLog")
	public void queryKuCunOperLog() {
		this.transmitJson(kuCunService.getKuCunOperLogEasyUiJSon(query));
	}

	@Override
	public KuCunOperLogSearchBean getModel() {
		return query;
	}

}

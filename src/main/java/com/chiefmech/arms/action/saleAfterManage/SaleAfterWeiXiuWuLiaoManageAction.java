package com.chiefmech.arms.action.saleAfterManage;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.query.WeiXiuChuTuiKuSearchBean;
import com.chiefmech.arms.service.WeiXiuChuTuiKuService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class SaleAfterWeiXiuWuLiaoManageAction extends BaseActionSupport
		implements ModelDriven<WeiXiuChuTuiKuSearchBean> {

	@Resource()
	private WeiXiuChuTuiKuService weiXiuChuTuiKuService;
	
	private WeiXiuChuTuiKuSearchBean query = new WeiXiuChuTuiKuSearchBean();

	@Action(value = "saleAfterWeiXiuWuLiaoManage", results = { @Result(name = "input", location = "saleAfter_WeiXiuWuLiaoManage.jsp") })
	public String saleAfterWeiXiuWuLiaoManage() {
		return INPUT;
	}

	@Action(value = "queryWeiXiuChuTuiKu")
	public void queryWeiXiuChuTuiKu() {
		this.transmitJson(weiXiuChuTuiKuService
				.getWeiXiuChuTuiKuEasyUiJSon(query));
	}

	@Override
	public WeiXiuChuTuiKuSearchBean getModel() {
		return query;
	}

}

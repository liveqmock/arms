package com.chiefmech.arms.action.saleAfterManage;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.WeiXiuPaiGong;
import com.chiefmech.arms.service.WeiXiuPaiGongService;


@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class WeiXiuZuAction extends BaseActionSupport {
	@Resource()
	private WeiXiuPaiGongService weiXiuPaiGongService;
	
	private List<WeiXiuPaiGong> wxpgList;

	@Action(value = "saleAfterWeiXiuPaiGong", results = {@Result(name = "input", location = "saleAfter_weiXiuPaiGong.jsp")})
	public String saleAfterWeiXiuPaiGong() {
	wxpgList=weiXiuPaiGongService.selectItem();
		return INPUT;
	}

	public List<WeiXiuPaiGong> getWxpgList() {
		return wxpgList;
	}

	public void setWxpgList(List<WeiXiuPaiGong> wxpgList) {
		this.wxpgList = wxpgList;
	}
	
}

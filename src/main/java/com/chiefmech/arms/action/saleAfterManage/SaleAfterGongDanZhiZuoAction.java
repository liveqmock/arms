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
import com.chiefmech.arms.entity.GongDanWeiXiuXiangMu;
import com.chiefmech.arms.service.GongDanService;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class SaleAfterGongDanZhiZuoAction extends BaseActionSupport {

	@Resource()
	private GongDanService gongDanService;

	private String saleAfterWeiXiuGuid;
	private List<GongDanWeiXiuXiangMu> gongDanWeiXiuXiangMuLst;

	@Action(value = "saleAfterGongDanZhiZuo", results = { @Result(name = "input", location = "saleAfter_gongDanZhiZuo.jsp") })
	public String saleAfterWeiXiuJieDai() {
		gongDanWeiXiuXiangMuLst = gongDanService
				.getGongDanWeiXiuXiangMuListByGongDanId(saleAfterWeiXiuGuid);
		return INPUT;
	}

	public String getSaleAfterWeiXiuGuid() {
		return saleAfterWeiXiuGuid;
	}

	public void setSaleAfterWeiXiuGuid(String saleAfterWeiXiuGuid) {
		this.saleAfterWeiXiuGuid = saleAfterWeiXiuGuid;
	}

	public List<GongDanWeiXiuXiangMu> getGongDanWeiXiuXiangMuLst() {
		return gongDanWeiXiuXiangMuLst;
	}

}

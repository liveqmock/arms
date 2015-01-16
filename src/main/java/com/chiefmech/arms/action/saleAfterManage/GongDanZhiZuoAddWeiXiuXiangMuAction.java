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
import com.chiefmech.arms.entity.WeiXiuXiangMu;
import com.chiefmech.arms.service.GongDanService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class GongDanZhiZuoAddWeiXiuXiangMuAction extends BaseActionSupport
		implements ModelDriven<WeiXiuXiangMu> {

	@Resource()
	private GongDanService gongDanService;

	private List<WeiXiuXiangMu> weiXiuXiangMuLst;
	private WeiXiuXiangMu item = new WeiXiuXiangMu();
	private String saleAfterGuid;

	@Action(value = "saleAfterGongDanZhiZuoAddWeiXiuXiangMu", results = { @Result(name = "input", location = "saleAfter_gongDanZhiZuoAddWeiXiuXiangMu.jsp") })
	public String saleAfterGongDanZhiZuoAddWeiXiuXiangMu() {
		weiXiuXiangMuLst = gongDanService.getWeiXiuXiangMuList(item);
		return INPUT;
	}

	@Action(value = "AddGongDanWeiXiuXiangMu")
	public void AddGongDanWeiXiuXiangMu() {
		String statusCode = "failed";

		GongDanWeiXiuXiangMu gongDanWeiXiuXiangMu = new GongDanWeiXiuXiangMu(
				saleAfterGuid, item);
		int rowsAffected = gongDanService
				.insertGongDanWeiXiuXiangMu(gongDanWeiXiuXiangMu);
		if (rowsAffected == 1) {
			statusCode = "success";
		}

		this.transmitJson(String.format("{\"statusCode\":\"%s\"}", statusCode));
	}

	public String getSaleAfterGuid() {
		return saleAfterGuid;
	}

	public void setSaleAfterGuid(String saleAfterGuid) {
		this.saleAfterGuid = saleAfterGuid;
	}

	@Override
	public WeiXiuXiangMu getModel() {
		return item;
	}

	public List<WeiXiuXiangMu> getWeiXiuXiangMuLst() {
		return weiXiuXiangMuLst;
	}

	public WeiXiuXiangMu getQuery() {
		return item;
	}

}

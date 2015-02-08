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
import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;
import com.chiefmech.arms.service.CustomerInfoService;
import com.chiefmech.arms.service.GongDanService;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class WeiXiuJieDaiDaoHangAction extends BaseActionSupport {

	@Resource()
	private GongDanService gongDanService;
	@Resource()
	private CustomerInfoService cheZhuLianXiRenService;

	private String cheLiangId;
	private VKeHuCheLiang customer;
	private List<GongDan> gongDanLst;

	@Action(value = "saleAfterWeiXiuJieDaiDaoHang", results = { @Result(name = "input", location = "saleAfterWeiXiuJieDaiDaoHang.jsp") })
	public String saleAfterWeiXiuJieDaiDaoHang() {
		customer = cheZhuLianXiRenService
				.findVKeHuCheLiangByCheLiangId(cheLiangId);
		gongDanLst = gongDanService.getGongDanListByCheLiangId(customer
				.getTxtCheLiangId());
		if (gongDanLst != null && gongDanLst.size() > 5) {
			for (int i = gongDanLst.size() - 1; i >= 5; i--) {
				gongDanLst.remove(i);
			}
		}
		return INPUT;
	}

	public void setCheLiangId(String cheLiangId) {
		this.cheLiangId = cheLiangId;
	}

	public VKeHuCheLiang getCustomer() {
		return customer;
	}

	public List<GongDan> getGongDanLst() {
		return gongDanLst;
	}

}

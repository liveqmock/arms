package com.chiefmech.arms.action.callManage;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.Constants;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.Maill;
import com.chiefmech.arms.entity.User;
import com.chiefmech.arms.service.MaillService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/callManage")
@Controller()
@Scope("prototype")
public class CallAction extends BaseActionSupport implements ModelDriven<Maill> {

	@Resource()
	private MaillService maillService;

	private Maill item = new Maill();

	@Action(value = "call", results = { @Result(name = "input", location = "call.jsp") })
	public String call() {
		return INPUT;
	}

	@Action(value = "callMaill", results = { @Result(name = "input", location = "call.jsp") })
	public String callMaill() {
		return INPUT;
	}

	@Action(value = "insertMaill", results = { @Result(name = "input", location = "sendCall.jsp") })
	public String insertItem() {
		Maill();
		return INPUT;
	}

	@Action(value = "deleteMaill")
	public void deleteMaill() {
		int rowAffected = maillService.deleteItem(item.getMaillId());
		String jsonStr = getJsonResponse(rowAffected, "删除");
		this.transmitJson(jsonStr);

	}

	private String getJsonResponse(int rowAffected, String action) {
		String jsonStr = "{\"status\":\"ok\"}";
		if (rowAffected != 1) {
			jsonStr = String.format("{\"errorMsg\":\"%s数据失败\"}", action);
		}

		return jsonStr;
	}

	@Action(value = "updateCallCenter")
	public void updateItem() {
		String time = new SimpleDateFormat("yyyy-MM-dd").format(Calendar
				.getInstance().getTime());
		item.setTxtReadDate(time);
		int rowAffected = maillService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	private void Maill() {
		User user = (User) servletRequest.getSession().getAttribute(
				Constants.KEY_USER_SESSION);

		String[] hideCCUserId = item.getHidCCUserId().split(",");
		String[] hideCCUserName = item.getHidCCUserName().split(",");
		String[] hideToUserId = item.getHidToUserId().split(",");
		String[] hideToUserName = item.getHidToUserName().split(",");
		int id;
		if (hideToUserId.length > hideCCUserId.length) {
			id = hideCCUserId.length;
			for (int i = 0; i < hideToUserId.length; i++) {
				id -= 1;
				item.setMaillId(IDGen.getUUID());
				item.setSenderId(user.getUserId());
				item.setSenderName(user.getDisplayName());
				String time = new SimpleDateFormat("yyyy-MM-dd")
						.format(Calendar.getInstance().getTime());
				item.setHidToUserId(hideToUserId[i]);
				item.setHidToUserName(hideToUserName[i]);
				if (id >= 0) {
					item.setHidCCUserId(hideCCUserId[i]);
					item.setHidCCUserName(hideCCUserName[i]);
				} else {
					item.setHidCCUserId("");
					item.setHidCCUserName("");
				}
				item.setTxtSendDate(time);
				maillService.insertItem(item);
			}
		} else {
			id = hideToUserId.length;
			for (int i = 0; i < hideCCUserId.length; i++) {
				id -= 1;
				item.setMaillId(IDGen.getUUID());
				item.setSenderId(user.getUserId());
				item.setSenderName(user.getDisplayName());
				String time = new SimpleDateFormat("yyyy-MM-dd")
						.format(Calendar.getInstance().getTime());
				item.setHidCCUserId(hideCCUserId[i]);
				item.setHidCCUserName(hideCCUserName[i]);

				if (id >= 0) {
					item.setHidToUserId(hideToUserId[i]);
					item.setHidToUserName(hideToUserName[i]);
				} else {
					item.setHidToUserId("");
					item.setHidToUserName("");
				}
				item.setTxtSendDate(time);
				maillService.insertItem(item);
			}
		}
	}

	@Override
	public Maill getModel() {
		return item;
	}
}

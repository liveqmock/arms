package com.chiefmech.arms.service;


import com.chiefmech.arms.entity.Maill;
import com.chiefmech.arms.entity.query.MaillSearchBean;

public interface MaillService {
	public int insertItem(Maill item);

	public int updateItem(Maill item);

	public int deleteItem(String id);
	
	public String getMaillEasyUiJSon(MaillSearchBean query,String userId);
	
	public String getCallCenterEasyUiJson(MaillSearchBean query,String userId);
	
	public String getReceiveCallEasyUiJson(MaillSearchBean query,String userId);
}

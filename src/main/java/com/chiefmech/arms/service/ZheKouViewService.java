package com.chiefmech.arms.service;
import com.chiefmech.arms.entity.ZheKou;
import com.chiefmech.arms.entity.view.ZheKouView;

public interface ZheKouViewService {
	
	public int insertItem(ZheKou item);

	public int updateItem(ZheKou item);

	public int deleteItem(String id);

	public String getZheKouViewEasyUiJSon(ZheKouView query, int page, int rows);
}

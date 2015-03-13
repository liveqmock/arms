package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.TaoKaItem;
import com.chiefmech.arms.entity.TaoKaSort;

public interface TaoKaService {

	String getTaoKaSortEasyUiJSon();

	int insertTaoKaSort(TaoKaSort item);

	int updateTaoKaSort(TaoKaSort item);

	int deleteTaoKaSort(String txtGuid);

	String getTaoKaItemEasyUiJSon();

	int insertTaoKaItem(TaoKaItem item);

	int updateTaoKaItem(TaoKaItem item);

	int deleteTaoKaItem(String txtGuid);

}

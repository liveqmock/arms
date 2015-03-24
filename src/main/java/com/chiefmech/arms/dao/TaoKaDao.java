package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.chiefmech.arms.entity.TaoKaItem;
import com.chiefmech.arms.entity.TaoKaSort;

public interface TaoKaDao {

	@Select("select * from taokasort where txtShopCode=#{txtShopCode}  order by txtTaoKaName")
	List<TaoKaSort> getTaoKaSortList(String txtShopCode);

	@Insert("insert into taokasort(txtGuid,txtTaoKaName,txtTaoKaPrice,txtShopCode) values(#{txtGuid},#{txtTaoKaName},#{txtTaoKaPrice},#{txtShopCode})")
	public int insertTaoKaSort(TaoKaSort item);

	@Update("update taokasort set txtTaoKaName=#{txtTaoKaName},txtTaoKaPrice=#{txtTaoKaPrice} where txtGuid=#{txtGuid}")
	public int updateTaoKaSort(TaoKaSort item);

	@Delete("delete from taokasort where txtGuid=#{txtGuid}")
	public int deleteTaoKaSort(String id);

	@Insert("insert into taokaitem(txtGuid,txtTaoKaSortGuid,txtXiangMuCode,txtXiangMuName,txtTotalTimes) values(#{txtGuid},#{txtTaoKaSortGuid},#{txtXiangMuCode},#{txtXiangMuName},#{txtTotalTimes})")
	public int insertTaoKaItem(TaoKaItem item);

	@Update("update taokaitem set txtXiangMuCode=#{txtXiangMuCode},txtXiangMuName=#{txtXiangMuName},txtTotalTimes=#{txtTotalTimes} where txtGuid=#{txtGuid}")
	public int updateTaoKaItem(TaoKaItem item);

	@Delete("delete from taokaitem where txtGuid=#{txtGuid}")
	public int deleteTaoKaItem(String id);

	@Select("select * from v_taokaitem where txtShopCode=#{txtShopCode} order by txtTaoKaSort,txtXiangMuCode")
	public List<TaoKaItem> getTaoKaItemList(String txtShopCode);

	@Delete("delete from taokaitem where txtTaoKaSortGuid=#{txtTaoKaSortGuid}")
	int deleteAllTaoKaItemByTaoKaSortGuid(String txtTaoKaSortGuid);

}

package com.chiefmech.arms.dao;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.entity.LianXiRenXinXi;

@Repository("lianXiRenDao")
public interface LianXiRenDao {

	@Insert("insert into lianxirenxinxi values(#{txtLianXiRenId},#{txtLianXiRenName},#{ddlLianXiRenSex},"
			+ "#{txtLianXiRenTel},#{txtLianXiRenMob},#{ddlLianXiRenChengWei},#{ddlLianXiRenShenFen},"
			+ "#{ddlLianXiRenZhiWei},#{ddlLianXiCardSort},#{txtLianXiRenCardNo},#{txtLianXiRenBirthday},"
			+ "#{ddlLianXiRenP},#{ddlLianXiRenC},#{ddlLianXiRenA},#{txtLianXiRenAdd},"
			+ "#{ddlLianXiRenJiaZhaoSort},#{txtLianXiRenJiaZhaoDate},#{txtLianXiRenFirstJiaZhaoDate},"
			+ "#{txtLianXiRenJiaZhaoArea},#{txtLianXiRenTeZheng},#{txtLianXiRenEMail},#{txtLianXiRenGongZuoDanWei},"
			+ "#{txtCheLiangJieDaiTiXing})")
	public int insertLianXiRen(LianXiRenXinXi lianXiRen);

}

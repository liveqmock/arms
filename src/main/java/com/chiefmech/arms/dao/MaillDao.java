package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.MaillDaoSqlProvider;
import com.chiefmech.arms.entity.Maill;
import com.chiefmech.arms.entity.query.MaillSearchBean;

@Repository("maillDao")
public interface MaillDao {

	@SelectProvider(type = MaillDaoSqlProvider.class, method = "getMaillList")
	public List<Maill> getMaillList(@Param("item") MaillSearchBean query,
			@Param("userId") String userId);

	@SelectProvider(type = MaillDaoSqlProvider.class, method = "getMaillListCount")
	public int getMaillListCount(@Param("item") MaillSearchBean query,
			@Param("userId") String userId);

	@Insert("insert into maill(maillId,senderId,senderName,hidToUserId,hidCCUserId,hidToUserName,hidCCUserName,txtRemarks,txtSendDate,txtReadDate) values(#{maillId},#{senderId},#{senderName},#{hidToUserId},#{hidCCUserId},#{hidToUserName},#{hidCCUserName},#{txtRemarks},#{txtSendDate},#{txtReadDate})")
	public int insertItem(Maill item);

	@Update("update maill set txtReadDate=#{txtReadDate} where maillId=#{maillId}")
	public int updateItem(Maill item);

	@Delete("delete from maill where maillId=#{maillId}")
	public int deleteItem(String id);

	@SelectProvider(type = MaillDaoSqlProvider.class, method = "getCallCenterList")
	public List<Maill> getCallCenterList(@Param("item") MaillSearchBean query,
			@Param("userId") String userId);

	@SelectProvider(type = MaillDaoSqlProvider.class, method = "getCallCenterListCount")
	public int getCallCenterListCount(@Param("item") MaillSearchBean query,
			@Param("userId") String userId);
	
	@SelectProvider(type = MaillDaoSqlProvider.class, method = "getReceiveCallList")
	public List<Maill> getReceiveCallList(@Param("item") MaillSearchBean query,
			@Param("userId") String userId);
	
	@SelectProvider(type = MaillDaoSqlProvider.class, method = "getReceiveCallListCount")
	public int getReceiveCallListCount(@Param("item") MaillSearchBean query,
			@Param("userId") String userId);
	
	@Select("select * from maill")
	public List<Maill> selectItem();

}

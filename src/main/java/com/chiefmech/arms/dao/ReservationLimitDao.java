package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.ReservationLimitDaoSqlProvider;
import com.chiefmech.arms.entity.ReservationLimit;
import com.chiefmech.arms.entity.query.ReservationLimitSearchBean;

@Repository("reservationLimitDao")
public interface ReservationLimitDao {

	@SelectProvider(type = ReservationLimitDaoSqlProvider.class, method = "getReservationLimitList")
	public List<ReservationLimit> getReservationLimitList(
			@Param("item") ReservationLimitSearchBean query);

	@SelectProvider(type = ReservationLimitDaoSqlProvider.class, method = "getReservationLimitListCount")
	public int getReservationLimitListCount(
			@Param("item") ReservationLimitSearchBean query);

	@Insert("insert into reservationlimit(txtGuid,shopCode,reservationLimit,reservationDate) values(#{txtGuid},#{shopCode},#{reservationLimit},#{reservationDate})")
	public int insertItem(ReservationLimit item);

	@Update("update reservationlimit set shopCode=#{shopCode},reservationLimit=#{reservationLimit},reservationDate=#{reservationDate} where txtGuid=#{txtGuid}")
	public int updateItem(ReservationLimit item);

	@Delete("delete from reservationlimit where txtGuid=#{txtGuid}")
	public int deleteItem(String id);

	@Select("select shopCode,shopName,reservationLimit from shop where companyFlag=#{companyFlag}")
	public List<ReservationLimit> getDefaultReservationList(String companyFlag);

	@Update("update shop set reservationLimit=#{reservationLimit} where shopCode=#{shopCode}")
	public int updateDefaultReservationLimit(ReservationLimit item);

	@Select("select * from reservationlimit where  shopCode=#{shopCode} and date_format(reservationDate,'%%Y%%m%%d')=date_format(#{reservationDate},'%%Y%%m%%d') ")
	public ReservationLimit queryReservationLimit(
			@Param("shopCode") String shopCode,
			@Param("reservationDate") String reservationDate);

}

package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;

import com.chiefmech.arms.dao.sqlprovider.CustomerReservationDaoSqlProvider;
import com.chiefmech.arms.entity.CustomerReservation;
import com.chiefmech.arms.entity.query.CustomerReservationSearchBean;
import com.chiefmech.arms.entity.view.VCustomerReservation;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;

public interface CustomerReservationDao {

	@SelectProvider(type = CustomerReservationDaoSqlProvider.class, method = "getReservationList")
	public List<VCustomerReservation> getReservationList(
			@Param("item") CustomerReservationSearchBean query);

	@SelectProvider(type = CustomerReservationDaoSqlProvider.class, method = "getReservationListCount")
	public int getReservationListCount(
			@Param("item") CustomerReservationSearchBean query);

	@Insert("insert into customerreservation(txtReserveGuid,txtCheLiangId,txtTicketInfo,txtReserveDate,txtReserveShop,txtWeiXinId,txtCallAddr,txtCustomerServiceName,txtRemarks) values(#{txtReserveGuid},#{txtCheLiangId},#{txtTicketInfo},#{txtReserveDate},#{txtReserveShop},#{txtWeiXinId},#{txtCallAddr},#{txtCustomerServiceName},#{txtRemarks})")
	public int insertItem(CustomerReservation item);

	@Update("update customerreservation set txtCheLiangId=#{txtCheLiangId},txtTicketInfo=#{txtTicketInfo},txtReserveDate=#{txtReserveDate},txtReserveShop=#{txtReserveShop},txtWeiXinId=#{txtWeiXinId},txtCallAddr=#{txtCallAddr},txtCustomerServiceName=#{txtCustomerServiceName},txtRemarks=#{txtRemarks} where txtReserveGuid=#{txtReserveGuid}")
	public int updateItem(CustomerReservation item);

	@Delete("delete from customerreservation where txtReserveGuid=#{txtReserveGuid}")
	public int deleteItem(String id);

	@Select("select * from v_kehu_cheliang where txtCheLiangChePaiHao=#{txtCheLiangChePaiHao}")
	public List<VKeHuCheLiang> getVKeHuCheLiangList(String txtCheLiangChePaiHao);
}

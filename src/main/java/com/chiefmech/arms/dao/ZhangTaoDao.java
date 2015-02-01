package com.chiefmech.arms.dao;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import com.chiefmech.arms.dao.sqlprovider.ZhangTaoDaoSqlProvider;
import com.chiefmech.arms.entity.ZhangTao;

@Repository("zhangTaoDao")
public interface ZhangTaoDao {

	@SelectProvider(type = ZhangTaoDaoSqlProvider.class, method = "getZhangTaoList")
	public List<ZhangTao> getZhangTaoList(@Param("item") ZhangTao query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = ZhangTaoDaoSqlProvider.class, method = "getZhangTaoListCount")
	public int getZhangTaoListCount(@Param("item") ZhangTao query);

	@Insert("insert into ZhangTao(txtZhangTaoGuid,txtZhangTaoMing) values(#{txtZhangTaoGuid},#{txtZhangTaoMing})")
	public int insertItem(ZhangTao item);

	@Update("update ZhangTao set txtZhangTaoMing=#{txtZhangTaoMing} where txtZhangTaoGuid=#{txtZhangTaoGuid}")
	public int updateItem(ZhangTao item);

	@Delete("delete from ZhangTao where txtZhangTaoGuid=#{txtZhangTaoGuid}")
	public int deleteItem(String id);
	
	@Select("select * from zhangtao")
	public List<ZhangTao> findZhangTao();

}

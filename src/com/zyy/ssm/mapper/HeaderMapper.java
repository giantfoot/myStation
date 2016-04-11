package com.zyy.ssm.mapper;

import com.zyy.ssm.po.Header;
import com.zyy.ssm.po.HeaderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HeaderMapper {
    int countByExample(HeaderExample example);

    int deleteByExample(HeaderExample example);

    int deleteByPrimaryKey(String headerid);

    int insert(Header record);

    int insertSelective(Header record);

    List<Header> selectByExampleWithBLOBs(HeaderExample example);

    List<Header> selectByExample(HeaderExample example);

    Header selectByPrimaryKey(String headerid);

    int updateByExampleSelective(@Param("record") Header record, @Param("example") HeaderExample example);

    int updateByExampleWithBLOBs(@Param("record") Header record, @Param("example") HeaderExample example);

    int updateByExample(@Param("record") Header record, @Param("example") HeaderExample example);

    int updateByPrimaryKeySelective(Header record);

    int updateByPrimaryKeyWithBLOBs(Header record);

    int updateByPrimaryKey(Header record);
}
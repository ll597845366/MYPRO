package com.KongJian.manage.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.KongJian.manage.pojo.DiaoCha;
import com.KongJian.manage.pojo.LianXi;

public interface LianXiMapper {
public String lxtmClassname(String loginUsername);
public List<LianXi> endTime(String className);
public void submitlx(@Param("lxdaan")String lxdaan,@Param("loginUsername")String loginUsername,@Param("lxid")Integer lxid,@Param("className")String className);
public String sfydaan(@Param("className")String className,@Param("loginUsername")String loginUsername);
public void wjdcinsert(DiaoCha diaoCha);
public void wjdcstatus(String loginUsername);
}

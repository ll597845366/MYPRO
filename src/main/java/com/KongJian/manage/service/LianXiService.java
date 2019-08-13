package com.KongJian.manage.service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.KongJian.manage.pojo.DiaoCha;
import com.KongJian.manage.pojo.LianXi;
import com.KongJian.manage.pojo.MianShiTiMu;

public interface LianXiService {
	public String lxtmClassname(String loginUsername);
	public List<LianXi> endTime(String className);
	public void submitlx(String loginUsername ,String lxdaan,Integer lxid,String className);
	public String sfydaan(String className,String loginUsername);
	public void wjdcinsert(DiaoCha diaoCha);
	public void wjdcstatus(String loginUsername);

}

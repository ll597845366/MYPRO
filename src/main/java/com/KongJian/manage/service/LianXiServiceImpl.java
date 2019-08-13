package com.KongJian.manage.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.KongJian.manage.mapper.LianXiMapper;
import com.KongJian.manage.pojo.DiaoCha;
import com.KongJian.manage.pojo.LianXi;
import com.KongJian.manage.pojo.MianShiTiMu;

@Service
public class LianXiServiceImpl implements LianXiService{
	@Autowired
	LianXiMapper lianXiMapper;
	@Override
	public String lxtmClassname(String loginUsername) {
		// TODO Auto-generated method stub
		return lianXiMapper.lxtmClassname(loginUsername);
	}
	@Override
	public List<LianXi> endTime(String className) {
		// TODO Auto-generated method stub
		return lianXiMapper.endTime(className);
	}
	@Override
	public void submitlx(String loginUsername, String lxdaan, Integer lxid,String className) {
		lianXiMapper.submitlx(lxdaan, loginUsername, lxid,className);
		
	}
	@Override
	public String sfydaan(String className, String loginUsername) {
		// TODO Auto-generated method stub
		return lianXiMapper.sfydaan(className, loginUsername);
	}
	@Override
	public void wjdcinsert(DiaoCha diaoCha) {
		lianXiMapper.wjdcinsert(diaoCha);
		
	}
	@Override
	public void wjdcstatus(String loginUsername) {
		// TODO Auto-generated method stub
		lianXiMapper.wjdcstatus(loginUsername);
	}
	

}

package com.KongJian.manage.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.KongJian.manage.mapper.KaoShiMapper;
import com.KongJian.manage.pojo.BJPM;
import com.KongJian.manage.pojo.KaoShi;
import com.KongJian.manage.pojo.Score;
import com.KongJian.manage.pojo.User;
import com.KongJian.manage.pojo.cuotimsg;
@Service
public class KaoShiServiceImpl  implements KaoShiService{
        
	@Autowired
	KaoShiMapper kaoShiMapper;
	@Override
	public KaoShi xsks(String loginUsername) {
		
		return kaoShiMapper.xsks(loginUsername);
	}
	@Override
	public Integer tmzs(String kaoshiName) {
		
		return kaoShiMapper.tmzs(kaoshiName);
	}
	@Override
	public KaoShi xztm(String ksname,Integer xztm) {
		
		return kaoShiMapper.xztm(ksname,xztm);
	}
	@Override
	public KaoShi zqda(Integer id) {
		
		return kaoShiMapper.zqda(id);
	}
	@Override
	public void fenshu(Integer score, String loginUsername, String ksname) {
		kaoShiMapper.fenshu(score, loginUsername, ksname);
		
	}
	@Override
	public Integer kscore(String loginUsername, String ksname) {
		
		return kaoShiMapper.kscore(loginUsername, ksname);
	}
	@Override
	public void jiludaan(String mydaan, String loginUsername, String ksname, Integer timid) {
		   
		
		kaoShiMapper.jiludaan(mydaan, loginUsername, ksname, timid);
		
	}
	@Override
	public String sfrk(String loginUsername, String ksname, Integer timid) {
		
		return kaoShiMapper.sfrk(loginUsername, ksname, timid);
	}
	@Override
	public void daangengxin(String mydaan, String loginUsername, String ksname, Integer timid) {
		kaoShiMapper.daangengxin(mydaan, loginUsername, ksname, timid);
		
	}
	@Override
	public KaoShi sjed(String kaoshiName, Integer timid) {
		// TODO Auto-generated method stub
		return kaoShiMapper.sjed(kaoshiName, timid);
	}
	@Override
	public List<BJPM> bjpm(String ksname, String classname) {
		
		return kaoShiMapper.bjpm(ksname, classname);
	}
	@Override
	public Integer vipex(String loginUsername) {
		// TODO Auto-generated method stub
		return kaoShiMapper.vipex(loginUsername);
	}
	@Override
	public void insertkstm(KaoShi kaoshi) {
		kaoShiMapper.insertkstm(kaoshi);
		
	}
	@Override
	public List<HashMap<String, Object>> cuotitable(String loginUsername) {
		// TODO Auto-generated method stub
		return kaoShiMapper.cuotitable(loginUsername);
	}
	@Override
	public List<cuotimsg> kseduser(String loginUsername) {
		// TODO Auto-generated method stub
		User user= kaoShiMapper.kseduser(loginUsername);
		List <cuotimsg> list=new ArrayList();
		String classname=user.getBanji();
		String[] s=classname.split("-");
		if(s[0].equals("CGB")) {
			for(int i=0;i<15;i++) {
				String ksname="cgb"+i;
				Integer cuoticount=kaoShiMapper.cuoticount(ksname, loginUsername);
				if(cuoticount==0||cuoticount==null) {
					continue;
				}else {
					cuotimsg ctm=new cuotimsg();
					ctm.setCuoticount(cuoticount);
					ctm.setKsname(ksname);
					list.add(ctm);
					
				}
				
				
				
			}
			System.err.println(list.toString());
			return list;
			
		   }else if(s[0].equals("JSD")){
			   for(int i=0;i<15;i++) {
					String ksname="jsd"+i;
					Integer cuoticount=kaoShiMapper.cuoticount(ksname, loginUsername);
					if(cuoticount==0||cuoticount==null) {
						continue;
					}else {
						cuotimsg ctm=new cuotimsg();
						ctm.setCuoticount(cuoticount);
						ctm.setKsname(ksname);
						list.add(ctm);
						
					}
					
					
					
				}
				return list;
			
		}else {
			return null;
		}
		
		
	}
	@Override
	public List<KaoShi> agcuoti(String loginUsername, String ksname) {
		// TODO Auto-generated method stub
		return kaoShiMapper.agcuoti(loginUsername, ksname);
	}
	@Override
	public KaoShi ctjiexi(String ksname, Integer tmid) {
		// TODO Auto-generated method stub
		return kaoShiMapper.ctjiexi(ksname, tmid);
	}
	@Override
	public Score findScore(String loginUsername, String ksname) {
		// TODO Auto-generated method stub
		return kaoShiMapper.findScore(loginUsername, ksname);
	}
	@Override
	public void updateScore(Integer score, String loginUsername, String ksname) {
		kaoShiMapper.updateScore(score, loginUsername, ksname);
		
	}
	@Override
	public List<Score> myscore(String loginUsername) {
		// TODO Auto-generated method stub
		return kaoShiMapper.myscore(loginUsername);
	}
	@Override
	public String isksTime(String ksname) {
		// TODO Auto-generated method stub
		return kaoShiMapper.isksTime(ksname);
	}

}

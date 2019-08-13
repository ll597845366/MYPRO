package com.KongJian.manage.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.KongJian.manage.pojo.DiaoCha;
import com.KongJian.manage.pojo.LianXi;
import com.KongJian.manage.service.LianXiService;


@Controller
public class LianXiController {
	final static   int s=0;
	//练习页面
	@Autowired
	LianXiService lianXiService;
@RequestMapping("wwclx")

public String wwclx() {
	
	return "lianxi";
	
}
@RequestMapping("lxtm")
@ResponseBody
public LianXi lxtm(String loginUsername) {
	//得到该用户的班级
	String className=lianXiService.lxtmClassname(loginUsername);
	Date now=new Date();
	
	List<LianXi> list=lianXiService.endTime(className);
	//如果没有查询到数据就表示为空
	if(list.size()<=0) {return null;}
	for(Integer i=0;i<list.size();i++) {
		if(now.getTime()>=list.get(i).getEndTime().getTime()) {
			continue;
			
			
		}else {
			
			return list.get(i);
		}
		
		
	}
	return null;
	
	
	
	
}

@RequestMapping("submitlx")
@ResponseBody
public String submitlx(String loginUsername,String lxdaan,Integer lxid) {
	String className=lianXiService.lxtmClassname(loginUsername);
	String daaned=lianXiService.sfydaan(className, loginUsername);
	if(daaned==null||daaned=="") {
		
		
	
	if(lxdaan==null||lxdaan=="") {
		return "kong";
		
	}else {
		
	try {
		System.out.println(className);
		lianXiService.submitlx(loginUsername, lxdaan, lxid,className);
		return "true";
	} catch (Exception e) {
		e.printStackTrace();
		return "false";
	}
	}
		
		
		
	}else {
		
		return "daaned";
		
	}
	}
	
	
	
@RequestMapping("wjdcinsert")
@ResponseBody
public String wjdcinsert(String loginUsername,

 String address,
 String name,
String koubei,
 Integer age,
 String schoolEd,
 String skill,
 String tel,
Integer hopeMoney,
 String skillTeacher,
 String npy,
 String zhichi,String zhengshu,String xueli) {
	DiaoCha diaoCha=new DiaoCha();
	diaoCha.setLoginUsername(loginUsername);
	diaoCha.setAddress(address);
	diaoCha.setName(name);
	diaoCha.setKoubei(koubei);
	diaoCha.setAge(age);
	diaoCha.setSchoolEd(schoolEd);
	diaoCha.setSkill(skill);
	diaoCha.setTel(tel);
	diaoCha.setHopeMoney(hopeMoney);
	diaoCha.setSkillTeacher(skillTeacher);
	diaoCha.setNpy(npy);
	diaoCha.setZhichi(zhichi);
	diaoCha.setZhengshu(zhengshu);
	diaoCha.setXueli(xueli);
	
	String classname=lianXiService.lxtmClassname(diaoCha.getLoginUsername());
	diaoCha.setClassName(classname);
	System.err.println(diaoCha.toString());
	try {
		lianXiService.wjdcinsert(diaoCha);
		lianXiService.wjdcstatus(loginUsername);
		return "true";
	} catch (Exception e) {
		return "err";
	}
	
	
	
	
}
@RequestMapping("wjdcxq")
public String wjdcxq() {
	return "wjdcxq";
	
	
	
}
}


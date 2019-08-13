package com.KongJian.manage.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.KongJian.manage.pojo.MianShiTiMu;
import com.KongJian.manage.pojo.MstmJd;
import com.KongJian.manage.service.MianShiTiMuService;

@Controller
@RequestMapping("/")
public class MianShiTiMuController {
	
	@Autowired
	MianShiTiMuService mianShiTiMuService;
	
   @RequestMapping("mstmadd")
	public String mstmadd() {
		return "mstmadd";
		
		
	}
@RequestMapping( value = "mstminsert" ,method = RequestMethod.POST)
@ResponseBody
public String mstminsert(MultipartFile file) {

	
	try {
		//在service解析文件并且入库
		mianShiTiMuService.mstminsert(file);
      
        
  
		
		
		return "true";
	} catch (Exception e) {
		return "false";
	}
	
	
	
	
}
@RequestMapping("mymstm")
public String mymstm() {
	return "mymstm";
	
}
@RequestMapping("myfxjd")
@ResponseBody
public List<MstmJd> myfxjd(String loginUsername) {
	
	
	List<MstmJd> list=new ArrayList<MstmJd>();
	list=mianShiTiMuService.myfxjd(loginUsername);
	for(int i=0;i<list.size();i++) {
		 double type=list.get(i).getType();
		Integer mstmzs=mianShiTiMuService.findMSTMZS(type);
		list.get(i).setMstmzs(mstmzs);
	}
	
	return list;
	
	
}

@RequestMapping("mstmfx")
@ResponseBody
public MianShiTiMu mstmfx(String loginUsername,Double type) {
	Integer pid=mianShiTiMuService.mstmfxpid(loginUsername, type);
	if(pid==null||pid==0) {
		pid=1;
		
		mianShiTiMuService.insertMstmJd(loginUsername, type, pid);
		return mianShiTiMuService.startfx(type, pid);
	}else {
		
		if(mianShiTiMuService.startfx(type, pid)==null) {
			return null;
			
			
		}else {
			
			
			return mianShiTiMuService.startfx(type, pid);
		}
		
		
	}
	
	
	
	
}
@RequestMapping("mstmgo")
@ResponseBody
public MianShiTiMu mstmgo(String loginUsername,Integer pid,Double type) {
	MianShiTiMu mstm=mianShiTiMuService.startfx(type, pid);
	if(mstm==null) {
		mstm=new MianShiTiMu();
		mstm.setPid(pid);
		return mstm;
		
	}else {
		Integer pid1=mianShiTiMuService.mstmfxpid(loginUsername, type);
		if(pid>pid1) {
			
			mianShiTiMuService.updatemstmjd(loginUsername, type, pid);
			
		}
		
		return mstm;
		
	}

	
	
	
}
}

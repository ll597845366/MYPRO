package com.KongJian.manage.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.http.HttpResponse;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;



import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.KongJian.manage.pojo.KaoShi;
import com.KongJian.manage.pojo.User;
import com.KongJian.manage.pojo.cuotimsg;
import com.KongJian.manage.service.KaoShiService;
import com.KongJian.util.ImageUtil;




@Controller
public class KaoShiController {
	
         @Autowired
	KaoShiService kaoShiServie;
	
         @RequestMapping("xsks")
         @ResponseBody
	public String xsks(String loginUsername) {
		List<String> list=kaoShiServie.xsks(loginUsername);
		
		String s=list.get(0);
		Integer chengji=kaoShiServie.kscore(loginUsername, s);
		System.out.println(chengji);
		if(s!=null&&(chengji==null||chengji==0)) {
			
			return s;
			
		}else {
			
			return "false";
			
		}
		
		
		
		
		
		
	}
         
         @RequestMapping("tmzs")
         @ResponseBody
         public Integer tmzs(String ksname) {
			System.err.println(ksname);
        Integer tmzs=0;	 
        
        List<KaoShi> list= kaoShiServie.tmzs(ksname);
        
        if(list!=null) {
         for (KaoShi kaoShi : list) {
        	 System.out.println();
				 tmzs++;
        	   
			}
         System.out.println(tmzs);
        	return tmzs;
        }else {
        	  
        	return tmzs;
        	
        }
		
        	
        	 
        	 
        	
        	 
        	 
        	 
        	 
        	 
         }
         @RequestMapping("xztm")
         @ResponseBody
         public KaoShi xztm(Integer xztm,String ksname) {
        	 
        	 
        	 List<KaoShi> list=kaoShiServie.tmzs(ksname);
        	 KaoShi ks=list.get(xztm);
        	
        	
			return ks;
        	 
        	 
        	 
        	 
         }
         
         
         @RequestMapping("yuejuan")
         @ResponseBody
      public Integer  yuejuan(String  daan,Integer realid) {
        	 //[A,B] A,B
        	 KaoShi ks=kaoShiServie.zqda(realid);
        	 String zqda=ks.getDaAn();
        	 Integer fenshu=ks.getFenshu();
        	 Integer zql=zqda.length();
        	 Integer daanl=daan.length();
        	 if(zql==daanl) {
        		 
        		     if(daan.equals(zqda)) {
        			
        			 return fenshu;
        		    }else {
        		 
        			 
        			 return 0;
        		     }
        	  }else {
        			   String [] daan1=daan.split(",");
        			   String zldaan="";
        			   for(int i=0;i<daan1.length;i++) {
        				    zldaan=zldaan+daan1[i];
        				   }
        			 
        			   if(zldaan.equals(zqda)) {
        				   
        				   return fenshu;
        			   }else {
        				   
        				   return 0;
        			   }
        			 
        			 
        			 
        		 }
        		 
        	 }
			
@RequestMapping("fenshu")    
@ResponseBody
public String fenshu(Integer zongfen,String loginUsername,String ksname) {
	
	kaoShiServie.fenshu(zongfen, loginUsername, ksname);
	
	return "系统已完成阅卷现在您可以查看您的考试成绩!";
	
	
	
	
}        	 

@RequestMapping("kscj")
@ResponseBody
public Integer kscj(String ksname,String loginUsername) {
	Integer score=null;
	try {
		 score =kaoShiServie.kscore(loginUsername, ksname);
	} catch (Exception e) {
		
		return score;
	}
	


	return score;
	
	
	
}
@RequestMapping("jiludaan")
@ResponseBody
public String jiludaan(String daan,Integer xztm,String loginUsername,String ksname  ) {
	String mydaan="";
	
	if(daan.length()==1) {
		
		mydaan=daan;
		
	}else {
		
		String [] s=daan.split(",");
	
		for(int i=0;i<s.length;i++) {
			
			mydaan=mydaan+s[i];
		}
		
	}
	
	String sfydaan=kaoShiServie.sfrk(loginUsername, ksname, xztm);
	if(sfydaan==null) {
		kaoShiServie.jiludaan(mydaan, loginUsername, ksname, xztm);
		
		return "答案已经入库";
	}else {
	     kaoShiServie.daangengxin(mydaan, loginUsername, ksname, xztm);
	return "答案已重新入库";
	}
	
	
	
}
@RequestMapping("shijuancc")
@ResponseBody
public String shijuancc(String loginUsername ,String sjname) {
	   Integer score=kaoShiServie.kscore(loginUsername, sjname);
	   if(score==null) {
		   
		   
		   return "false";
		   
	   }else {
		   
		   return "true";
	   }
	
	
	
	
	
	
}
@RequestMapping("sjed")
@ResponseBody
public KaoShi  sjed(String loginUsername,String sjname,Integer sjxztm) {
				
				Integer timid=sjxztm+1;
        		
        		 
 return kaoShiServie.sjed(sjname, timid);  
        		 
        		 
        		 
        		 
}
@RequestMapping("selectmydaan")
@ResponseBody
public String selectmydaan(String loginUsername,String sjname ,Integer sjxztm) {
	
	    Integer timid=sjxztm+1;
	
	return kaoShiServie.sfrk(loginUsername, sjname, timid);
	
	
	
}

@RequestMapping("bjpm")
@ResponseBody
public List<User> bjpm(String ksname,String classname){
	List<User> list=null;
	try {
		list=kaoShiServie.bjpm(ksname, classname);
		return list;
	} catch (Exception e) {
		
		return list;
	}
	
	
	
	
}

@RequestMapping("daochu")
public void daochu(String ksname,String classname,HttpServletResponse response) {
	//poi   java  office文档操作jar包
   System.out.println(ksname+classname);
	List<User> list;
	list=kaoShiServie.bjpm(ksname, classname);
	//创建工作簿
	HSSFWorkbook workbook=new HSSFWorkbook();
	//创建表格sheet
	HSSFSheet sheet=workbook.createSheet(classname+ksname+"考试排名.xls");
	//创建行row
	HSSFRow row=sheet.createRow(0);
	//创建列
	row.createCell(0).setCellValue("排名");
	row.createCell(1).setCellValue("姓名");
	row.createCell(2).setCellValue("班级");
	row.createCell(3).setCellValue("考试名");
	row.createCell(4).setCellValue("分数");
	//如果list的长度部位零就说明有数据有数据才会进入到循中进行添加
	if(list.size()!=0) {
		try {
		for(int i=1;i<=list.size();i++) {
			row=sheet.createRow(i); 
			row.createCell(0).setCellValue(i);
			row.createCell(1).setCellValue(list.get(i-1).getUserName());
			row.createCell(2).setCellValue(list.get(i-1).getBanji());
			row.createCell(3).setCellValue(ksname);
			String loginUsername=list.get(i-1).getLoginUsername();
			row.createCell(4).setCellValue(kaoShiServie.kscore(loginUsername, ksname));  
	}
		
		OutputStream out;
		
			response.reset();
			String filename=classname+ksname+"排名.xls";
			response.setHeader("content-disposition", "attachment;filename="+filename);
			out=response.getOutputStream();
			
			workbook.write(out);
			workbook.close();
			out.close();
		} catch (IOException e) {
		
			e.printStackTrace();
		}
		
	}
	
}
@RequestMapping("yemian")
public String yemian() {
	
	return "yemian";
	
	
	
}
@RequestMapping("vipex")
@ResponseBody
public String vipex(String loginUsername) {
	
Integer s=kaoShiServie.vipex(loginUsername);
	if(s>=2) {
		
		return "true";
		
	}else {
		
		
		return "false";
	}
	
	
	
	
}
@RequestMapping("fabukaoshi")
public String fabukaoshi() {
	//12345670   0101  1234567890 123456789abcdef0
	//java浮点数运算不精确    浮点数有一个精确的运算类型
	//小转大自动转，大转小强转 （我们想转的那个类型）
	return "insertks";
	
	
	
}
@RequestMapping("insertkstm")
@ResponseBody
public String insertkstm(KaoShi kaoShi) {

		kaoShiServie.insertkstm(kaoShi);
		return "true";
	
	
      
	
	
	
}

@RequestMapping("wjdc")

public String wjdc() {
	
	
	return "wjdc";
}
@RequestMapping("pic")
public String pic() {
	return "pic";
	
	
	
}
@RequestMapping("CGB1903")
public String CGB1903() {
	
	return "CGB1903";
	
}

@RequestMapping("yzpic")
@ResponseBody
public void yzpic(HttpServletRequest request,HttpServletResponse response) {
	
	BufferedImage bufimg= (BufferedImage) ImageUtil.getImage().get("codePic");
	//获取我们图片验证码中的内容
	String code=(String) ImageUtil.getImage().get("code");
	//获取session
	HttpSession session=request.getSession();
	//将我们验证码的内容存到session中
	session.setAttribute("code", code);
	
	OutputStream out;
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", -1);

	response.setContentType("image/jpeg");

	try {
		out=response.getOutputStream();
		 ImageIO.write( bufimg, "jpeg", out);
		 out.close();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
}
//错题页面
@RequestMapping("cuoti")
public String cuoti() {
	return "cuoti";
	
	
}

//错题统计
@RequestMapping("cuotitable")
@ResponseBody
public List<cuotimsg> cuotitable(String loginUsername){
	
	List<cuotimsg> list= kaoShiServie.kseduser(loginUsername);
	
		return list;
		
	
	
	
}
@RequestMapping("agcuoti")
@ResponseBody
public List<KaoShi> agcuoti(String loginUsername,String ksname){
	return kaoShiServie.agcuoti(loginUsername, ksname);
	
	
}
@RequestMapping("cuotiyuejuan")
@ResponseBody
public Integer  cuotiyuejuan(String  cuotidaan,Integer cuotirealid) {
	 //[A,B] A,B
	 KaoShi ks=kaoShiServie.zqda(cuotirealid);
	 String zqda=ks.getDaAn();
	 Integer fenshu=ks.getFenshu();
	 Integer zql=zqda.length();
	 Integer daanl=cuotidaan.length();
	 if(zql==daanl) {
		 
		     if(cuotidaan.equals(zqda)) {
			
			 return 0;
		    }else {
		 
			 
			 return  ks.getTmid();
		     }
	  }else {
			   String [] daan1=cuotidaan.split(",");
			   String zldaan="";
			   for(int i=0;i<daan1.length;i++) {
				    zldaan=zldaan+daan1[i];
				   }
			 
			   if(zldaan.equals(zqda)) {
				   System.out.println(ks.getTmid());
				   return 0;
			   }else {
				   
				   return ks.getTmid();
			   }
			 
			 
			 
		 }
		 
	 }
@RequestMapping("ctjiexi")
@ResponseBody
public KaoShi ctjiexi(String ksname,Integer tmid) {
	//返回想要查询解析的题目
	return kaoShiServie.ctjiexi(ksname, tmid);
	
}
@RequestMapping("CGB1904")
public String CGB19041() {
	return "CGB1904";
}

}
         
         


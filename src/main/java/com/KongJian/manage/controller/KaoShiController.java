package com.KongJian.manage.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.http.HttpResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
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

import com.KongJian.manage.pojo.BJPM;
import com.KongJian.manage.pojo.KaoShi;
import com.KongJian.manage.pojo.Score;
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
	public KaoShi xsks(String loginUsername) {
		KaoShi ks=kaoShiServie.xsks(loginUsername);
		String ksname="";
		try {
			ksname=ks.getKaoshiName();
		} catch (Exception e) {
			return null;
		}
		
		
		Integer chengji=kaoShiServie.kscore(loginUsername, ksname);
		
		if(ksname!=null&&(chengji==null||chengji==0)) {
			
			return ks;
			
		}else {
			
			return null;
			
		}
		
		
		
		
		
		
	}
         
         @RequestMapping("tmzs")
         @ResponseBody
         public Integer tmzs(String ksname) {
			
           Integer tmzs=0;	 
        
         tmzs= kaoShiServie.tmzs(ksname);
       
        if(tmzs==null||tmzs==0) {
        
         
        	return 0;
        }else {
        	  
        	return tmzs;
        	
        }
		
        	
        	 
        	 
        	
        	 
        	 
        	 
        	 
        	 
         }
         @RequestMapping("xztm")
         @ResponseBody
         public KaoShi xztm(Integer xztm,String ksname) {
        	 
        	 
        	 KaoShi kaoshi=kaoShiServie.xztm(ksname,xztm);
        	 //KaoShi ks=list.get(xztm);
        	 
        	
        	
			return kaoshi;
        	 
        	 
        	 
        	 
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
public void fenshu(Integer zongfen,String loginUsername,String ksname) {
	Score score=kaoShiServie.findScore(loginUsername, ksname);
	
	try {
			Integer fenshued=score.getScore();
		
		
		if(null==fenshued||0==fenshued) {
			
			kaoShiServie.fenshu(zongfen, loginUsername, ksname);
		
		}else {
			kaoShiServie.updateScore(zongfen, loginUsername, ksname);
			
		}
		} catch (Exception e) {
			kaoShiServie.fenshu(zongfen, loginUsername, ksname);
			
		}
		
	
	
		
		
		
		
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
public void jiludaan(String daan,Integer xztm,String loginUsername,String ksname  ) {
	
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
		
		
	}else {
	     kaoShiServie.daangengxin(mydaan, loginUsername, ksname, xztm);
	
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
public List<BJPM> bjpm(String ksname,String classname){
	List<BJPM> list=null;
	try {
		list=kaoShiServie.bjpm(ksname, classname);
		return list;
	} catch (Exception e) {
		
		return list;
	}
	
	
	
	
}

@RequestMapping("daochu")
public void daochu(String ksname,String classname,HttpServletResponse response) {
		/*
		 * //poi java office�ĵ�����jar�� System.out.println(ksname+classname);
		 * List<BJPM> list; list=kaoShiServie.bjpm(ksname, classname); //����������
		 * HSSFWorkbook workbook=new HSSFWorkbook(); //�������sheet HSSFSheet
		 * sheet=workbook.createSheet(classname+ksname+"��������.xls"); //������row
		 * HSSFRow row=sheet.createRow(0); //������
		 * row.createCell(0).setCellValue("����");
		 * row.createCell(1).setCellValue("����"); row.createCell(2).setCellValue("�༶");
		 * row.createCell(3).setCellValue("������");
		 * row.createCell(4).setCellValue("����");
		 * //���list�ĳ��Ȳ�λ���˵�������������ݲŻ���뵽ѭ�н������ if(list.size()!=0) { try {
		 * for(int i=1;i<=list.size();i++) { row=sheet.createRow(i);
		 * row.createCell(0).setCellValue(i);
		 * row.createCell(1).setCellValue(list.get(i-1).getUserName());
		 * row.createCell(2).setCellValue(list.get(i-1).getBanji());
		 * row.createCell(3).setCellValue(ksname); String
		 * loginUsername=list.get(i-1).getLoginUsername();
		 * row.createCell(4).setCellValue(kaoShiServie.kscore(loginUsername, ksname)); }
		 * 
		 * OutputStream out;
		 * 
		 * response.reset(); String filename=classname+ksname+"����.xls";
		 * response.setHeader("content-disposition", "attachment;filename="+filename);
		 * out=response.getOutputStream();
		 * 
		 * workbook.write(out); workbook.close(); out.close(); } catch (IOException e) {
		 * 
		 * e.printStackTrace(); }
		 * 
		 * }
		 */
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
	//java���������㲻��ȷ    ��������һ����ȷ����������
	//Сת���Զ�ת����תСǿת ��������ת���Ǹ����ͣ�
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


@RequestMapping("yzpic")
@ResponseBody
public void yzpic(HttpServletRequest request,HttpServletResponse response) {
	
	BufferedImage bufimg= (BufferedImage) ImageUtil.getImage().get("codePic");
	//��ȡ����ͼƬ��֤���е�����
	String code=(String) ImageUtil.getImage().get("code");
	//��ȡsession
	HttpSession session=request.getSession();
	//��������֤������ݴ浽session��
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
//����ҳ��
@RequestMapping("cuoti")
public String cuoti() {
	return "cuoti";
	
	
}

//����ͳ��
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
	//������Ҫ��ѯ��������Ŀ
	return kaoShiServie.ctjiexi(ksname, tmid);
	
}
@RequestMapping("myscore")
@ResponseBody
public List<Score> myscore(String loginUsername){
	try {
		return kaoShiServie.myscore(loginUsername);
	} catch (Exception e) {
		return null;
	}
	
	
	
}
@RequestMapping("isksTime")
@ResponseBody
public Integer isksTime(String ksname){
	Date date =new Date();
	Long nowdate=date.getTime();
	String ksdate=kaoShiServie.isksTime(ksname);
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	try {
		Date dateed=df.parse(ksdate);
		Long realdate =dateed.getTime();
		if(nowdate<realdate) {
			return 0;
			
		}else {
			
			return 1;
		}
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return 0;
	}
	

	
	
}
}
         
         


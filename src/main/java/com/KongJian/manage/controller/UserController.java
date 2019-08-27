package com.KongJian.manage.controller;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.KongJian.manage.pojo.DiaoCha;
import com.KongJian.manage.pojo.User;
import com.KongJian.manage.service.UserService;


@Controller
@RequestMapping("/")
public class UserController {
@Autowired
private UserService userService;


@RequestMapping("findUser")
@ResponseBody
public User findUser(String loginUsername) {
	
	
	
	return userService.findUser(loginUsername);
	
	
}
@RequestMapping("student")
public String addUser() {
	return "student";
	
}

@RequestMapping("insert")
public String insertUser(User user) {
	
	if(user.getCreatedTime()==null) {
		user.setCreatedTime(new Date());
	}
	user.setUpdatedTime(new Date());
	System.out.println(user.getCreatedTime());
	
	userService.insertUser(user);
	
	return  "redirect:findUser";
	
}
@RequestMapping("login")
public String Login() {
	return "login";
	
	
	
	
}
@RequestMapping("loginRe")
public String loginRe(User user) {
	
	String s1=user.getPassword();
	
	String s="";
	System.out.println(s1);
	String pa=userService.loginRe(user.getLoginUsername());
	
		if(pa==null) {
			s= "login";
		}else if(s1.equals(pa)){
			s="redirect:student";
		}else if(s1!=pa){
			s= "login";
			
		}
		
		
		
		return s;
	
		
	
	
}

@RequestMapping("sign")
public String sign() {
	return "sign";
	
}

@RequestMapping("signRe")
public String signRe(User user) {
	String username=user.getLoginUsername();
	String password=user.getPassword();

	if(username==null||password==null) {
		
		return "sign";
	}else {
	System.out.println(username);
	System.out.println(password);
	String s="";
	List<String> list=userService.signRe();
	for (String s1 : list) {
		if(username.equals(s1)) {
			s="sign";
			return s;
		}else {
			continue;
			
		}
	}
	if(user.getCreatedTime()==null) {
		
		user.setCreatedTime(new Date());
	}
	user.setUpdatedTime(new Date());
	userService.signInsert(user);
	
	s="redirect:findUser";
	
	
	
	return s;
	}
	
	
}
@RequestMapping("ReloginUsername")
@ResponseBody
public String ReloginUsername(String loginUsername) {
	String regex="^[a-zA-Z0-9\\u4E00-\\u9FA5]+$";
	Pattern pattern=Pattern.compile(regex);
	Matcher macth=pattern.matcher(loginUsername);
	boolean b=macth.matches();
	if(b==true) {
		String name=userService.ReloginUsername(loginUsername);
		
		
		
		
		if(name==null) {
			return "true";
			
			
		
		}else  {
			
			
			return "false";
			
		}
	}else {
		return "error";
	}
	
	
	
	
	
	
}
@RequestMapping("Repassword")
@ResponseBody
public String Repassword(String password) {
	
	
	if(password.length()>18||password.length()<6) {
		
		return "error";
	}else if(6<=password.length()&&password.length()<10){
		return "low";
	}else if(password.length()>=10&&password.length()<14) {
		
		return "mid";
	}else {
		return "high";
	}
	
	
	
	
}

@RequestMapping("welcome")
@ResponseBody
public String Welcome(String loginUsername,String password) {
	
	String ps=userService.loginRe(loginUsername);
	
	
	if(ps.equals(password)&&password!=null) {
		return "ok";
	}else{
		return "error"; 
		
	}
	
	
	
	
	
}

@RequestMapping("loadjava")
public String Loadjava() {
	
	
	return "java";
}

@RequestMapping("sys")
public String bootstrap() {
	
	
	return "sys";
	
	
	
}




//��֤�绰�����Ƿ���ȷ
@RequestMapping("Retel")
@ResponseBody
public String Retel(String tel) {
	String regex="\\d{11}";
	Pattern pattern=Pattern.compile(regex);
	Matcher macth=pattern.matcher(tel);
	boolean b=macth.matches();
	if(b==true) {
		
		return "true";
		
	}else {
		
		return "false";
	}
	
	}

@RequestMapping("Resign")
public String Resign(User user) {
	String username1=userService.ReloginUsername(user.getLoginUsername());
	
	if(username1==null) {
		if(user.getUserName()==null) {
			user.setUserName(user.getLoginUsername());
				
			}
		userService.signInsert(user);
		return "welsign";
	}else {
		return "ע��ʧ�ܣ��˺��Ѵ���";
		
	}
	
	
	
	
	
	
	
	
}

@RequestMapping("kaoshi")
public String kaoshi() {
	
	
	return "kaoshi";
	
}

@RequestMapping("loginUser")
@ResponseBody
public User LoginUser(String loginUsername,String password) throws IOException {
	
	String s=userService.ReloginUsername(loginUsername);
	if(s==null) {
		
		return null;
		
		
	}else {
	   String s1=userService.Reloginpassword(loginUsername);
	   
		if(s1.equals(password)) {
			User result=userService.Reloginnicheng(loginUsername);
			
			
			return result;
			
		}else {
		
		return null;
		
	}
	
	
	
	
	
	
	
}
}
@RequestMapping("wanshan")
@ResponseBody
public String wanshan(Integer age,String address,String gender,String loginUsername) {
	
	
	Integer n=userService.wanshan(age, address, gender, loginUsername);
	if(n==1) {
		
		return "true";
		
	}else {
		
		return "false";
	}
	
	
	
	
	
	
}
//�޸�����
@RequestMapping("xgpassword")
@ResponseBody
public String xgpassword(String password,String loginUsername,String newpassword,String tel) {
	   User u=userService.xiugai(loginUsername);
	   System.out.println(password);
	   System.out.println(tel);
	  String s1=u.getPassword();
	  String s2=u.getTel();
	  if(password.equals(s1)&&tel.equals(s2)) {
		  password=newpassword;
		  userService.xiugaips(password, loginUsername);
		
		  return  "true";
		  
		  
	  }else {
		  
		  return "false";
		  
		  
		  
	  }
	}
	

}


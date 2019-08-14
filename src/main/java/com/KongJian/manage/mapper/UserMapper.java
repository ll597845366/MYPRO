package com.KongJian.manage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.KongJian.manage.pojo.User;

public interface UserMapper {
	
	public User findUser(String loginUsername);
	public void insertUser(User user);
	public String loginRe(String loginUsername);
	public List<String> signRe();
	public void signInsert(User user);
	public String ReloginUsername(String loginUsername);
	public String Reloginpassword(String loginUsername);
	public User Reloginnicheng(String loginUsername);
	
	public User xiugai(String loginUsername);
	public void wanshan(@Param("age")Integer age,@Param("address")String address,@Param("gender")String gender,@Param("loginUsername")String loginUsername);
	public void xiugaips(@Param("password")String password,@Param("loginUsername")String loginUsername);
}

package com.KongJian.manage.service;

import java.util.List;

import com.KongJian.manage.pojo.User;

public interface UserService {
public User findUser(String loginUsername);
public void insertUser(User user);
public String loginRe(String  loginUsername);
public List<String> signRe();
public void signInsert(User user);
public String ReloginUsername(String loginUsername);
public String Reloginpassword(String loginUsername);
public User Reloginnicheng(String loginUsername);
public Integer wanshan(Integer age,String address,String gender,String loginUsername);
public User xiugai(String loginUsername);
public void xiugaips(String password,String loginUsername);
}

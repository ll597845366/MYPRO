package com.KongJian.manage.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.KongJian.manage.pojo.KaoShi;
import com.KongJian.manage.pojo.User;

public interface KaoShiMapper {
	
public List<String> xsks(String loginUsername);
public List<KaoShi> tmzs(String kaoshiName);
public KaoShi xztm(Integer tmid);
public KaoShi zqda(Integer id);
public void fenshu(@Param("zongfen")Integer  zongfen,@Param("loginUsername")String loginUsername,@Param("ksname")String ksname );
public Integer kscore(@Param("loginUsername")String loginUsername,@Param("kscore")String kscore);
public void jiludaan(@Param("mydaan")String mydaan,@Param("loginUsername")String loginUsername,@Param("ksname")String ksname,@Param("timid")Integer timid);
public String sfrk(@Param("loginUsername")String loginUsername,@Param("ksname")String ksname,@Param("timid")Integer timid);
public void daangengxin(@Param("mydaan")String mydaan,@Param("loginUsername")String loginUsername,@Param("ksname")String ksname,@Param("timid")Integer timid);
public KaoShi sjed(@Param("kaoshiName")String kaoshiName,@Param("timid")Integer timid);
public List<User> bjpm(@Param("ksname")String ksname,@Param("classname")String classname);
public Integer vipex(String loginUsername);
public void insertkstm(KaoShi kaoshi);
public List<HashMap<String ,Object>> cuotitable(String loginUsername);
public User kseduser(String loginUsername);
public Integer cuoticount(@Param("ksname")String ksname,@Param("loginUsername")String loginUsername);
public List<KaoShi> agcuoti(@Param("loginUsername")String loginUsername,@Param("ksname")String ksname);
public KaoShi ctjiexi(@Param("ksname")String ksname,@Param("tmid")Integer tmid);
}

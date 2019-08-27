package com.KongJian.manage.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.KongJian.manage.pojo.BJPM;
import com.KongJian.manage.pojo.KaoShi;
import com.KongJian.manage.pojo.Score;
import com.KongJian.manage.pojo.User;

public interface KaoShiMapper {
	
public KaoShi xsks(String loginUsername);
public Integer tmzs(String kaoshiName);
public KaoShi xztm(@Param("ksname")String ksname,@Param("xztm")Integer xztm);
public KaoShi zqda(Integer id);
public void fenshu(@Param("score")Integer  score,@Param("loginUsername")String loginUsername,@Param("ksname")String ksname );
public void updateScore(@Param("score")Integer  score,@Param("loginUsername")String loginUsername,@Param("ksname")String ksname );
public Integer kscore(@Param("loginUsername")String loginUsername,@Param("ksname")String ksname);
public void jiludaan(@Param("mydaan")String mydaan,@Param("loginUsername")String loginUsername,@Param("ksname")String ksname,@Param("timid")Integer timid);
public String sfrk(@Param("loginUsername")String loginUsername,@Param("ksname")String ksname,@Param("timid")Integer timid);
public void daangengxin(@Param("mydaan")String mydaan,@Param("loginUsername")String loginUsername,@Param("ksname")String ksname,@Param("timid")Integer timid);
public KaoShi sjed(@Param("kaoshiName")String kaoshiName,@Param("timid")Integer timid);
public List<BJPM> bjpm(@Param("ksname")String ksname,@Param("classname")String classname);
public Integer vipex(String loginUsername);
public void insertkstm(KaoShi kaoshi);
public List<HashMap<String ,Object>> cuotitable(String loginUsername);
public User kseduser(String loginUsername);
public Integer cuoticount(@Param("ksname")String ksname,@Param("loginUsername")String loginUsername);
public List<KaoShi> agcuoti(@Param("loginUsername")String loginUsername,@Param("ksname")String ksname);
public KaoShi ctjiexi(@Param("ksname")String ksname,@Param("tmid")Integer tmid);
public Score findScore(@Param("loginUsername")String loginUsername,@Param("ksname")String ksname );
public List<Score> myscore(@Param("loginUsername")String loginUsername);

public String isksTime(@Param("ksname")String ksname);
}

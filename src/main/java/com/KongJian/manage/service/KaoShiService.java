package com.KongJian.manage.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.KongJian.manage.pojo.BJPM;
import com.KongJian.manage.pojo.KaoShi;
import com.KongJian.manage.pojo.Score;
import com.KongJian.manage.pojo.User;
import com.KongJian.manage.pojo.cuotimsg;

public interface KaoShiService {
public KaoShi xsks(String loginUsername);
public Integer tmzs(String kaoshiName);
public KaoShi xztm(String ksname,Integer xztm);
public KaoShi zqda(Integer id);
public void fenshu(Integer  score,String loginUsername,String ksname );
public void updateScore(Integer  score,String loginUsername,String ksname );
public Integer kscore(String loginUsername ,String ksname);
public void jiludaan(String mydaan,String loginUsername,String ksname,Integer timid);
public String sfrk(String loginUsername,String ksname,Integer timid);
public void daangengxin(String mydaan,String loginUsername,String ksname,Integer timid);
public KaoShi sjed(String kaoshiName,Integer timid);
public List<BJPM> bjpm(String ksname,String classname);
public Integer vipex(String loginUsername);
public void insertkstm(KaoShi kaoshi);
public List<HashMap<String ,Object>> cuotitable(String loginUsername);
public List<cuotimsg> kseduser(String loginUsername);
public List<KaoShi> agcuoti(String loginUsername,String ksname);
public KaoShi ctjiexi(String ksname,Integer tmid);
public Score findScore(String loginUsername,String ksname );
public List<Score> myscore(String loginUsername);
public String isksTime(String ksname);
}

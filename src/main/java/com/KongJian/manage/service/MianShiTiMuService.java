package com.KongJian.manage.service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

import com.KongJian.manage.pojo.MianShiTiMu;
import com.KongJian.manage.pojo.MstmJd;

public interface MianShiTiMuService {
void mstminsert(MultipartFile file);
List<MstmJd> myfxjd(String loginUsername);
Integer findMSTMZS(Double type);
Integer mstmfxpid(String loginUsername,Double type);
void insertMstmJd(String loginUsername,Double type,Integer pid);
MianShiTiMu startfx(Double type,Integer pid);
void updatemstmjd(String loginUsername,Double type,Integer pid);
}

package com.KongJian.manage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.KongJian.manage.pojo.MianShiTiMu;
import com.KongJian.manage.pojo.MstmJd;

public interface MianShiTiMuMapper {
void mstminsert(@Param("mstm")MianShiTiMu mstm);
Integer findPid(@Param("type")Double type);
List<MstmJd> myfxjd(@Param("loginUsername")String loginUsername);
Integer findMSTMZS(@Param("type")Double type);
Integer mstmfxpid(@Param("loginUsername")String loginUsername,@Param("type")Double type);
void insertMstmJd(@Param("loginUsername")String loginUsername,@Param("type")Double type,@Param("pid")Integer pid);
MianShiTiMu startfx(@Param("type")Double type,@Param("pid")Integer pid);
 void updatemstmjd(@Param("loginUsername")String loginUsername,@Param("type")Double type,@Param("pid")Integer pid);
}

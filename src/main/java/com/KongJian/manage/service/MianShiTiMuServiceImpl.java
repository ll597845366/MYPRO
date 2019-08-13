package com.KongJian.manage.service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.KongJian.manage.mapper.MianShiTiMuMapper;
import com.KongJian.manage.pojo.MianShiTiMu;
import com.KongJian.manage.pojo.MstmJd;
import com.KongJian.util.ExcelUtil;
@Service
public class MianShiTiMuServiceImpl implements MianShiTiMuService{
	@Autowired
MianShiTiMuMapper mianShiTiMuMapper;
	@Override
	public void mstminsert(MultipartFile file) {
		
		
		try {
			InputStream in=file.getInputStream();
			String fileName=file.getOriginalFilename();
			System.err.println(fileName);
			List<List<Object>> list=new ArrayList<List<Object>>();
			ExcelUtil excelUtil=new ExcelUtil();
			list=excelUtil.getBankListExcel(in, fileName);
			for(int i=0;i<list.size();i++) {
				if(list.get(i).size()==0||list==null||list.get(i).size()<3) {
					continue;
					
				}else {
				
				List<Object> list1=list.get(i);
						System.err.println("集合的大小"+list1.size());
						//第一行的内容进入数据库
						
							System.out.println(i);
							MianShiTiMu mstm=new MianShiTiMu();
							System.out.println(list1.toString());
							if(list1.size()<3) {
								continue;
							}else {
							String question=String.valueOf(list1.get(0));
							String answers=String.valueOf(list1.get(1));
							String s=String.valueOf(list1.get(2));
							Double type=Double.valueOf(s);
							
							
							mstm.setQuestion(question);
							mstm.setAnswers(answers);
							mstm.setType(type); 
							Integer pid=mianShiTiMuMapper.findPid(type);
							if(pid==null||pid==0) {
								mstm.setPid(1);
								
							}else {
								
								mstm.setPid(pid+1);
							}
						    mianShiTiMuMapper.mstminsert(mstm);
							}
				
			}
			}
		} catch (IOException e1) {
			
			e1.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}
	@Override
	public List<MstmJd> myfxjd(String loginUsername) {
		
		return mianShiTiMuMapper.myfxjd(loginUsername);
	}
	@Override
	public Integer findMSTMZS(Double type) {
		// TODO Auto-generated method stub
		return mianShiTiMuMapper.findMSTMZS(type);
	}
	@Override
	public Integer mstmfxpid(String loginUsername, Double type) {
		// TODO Auto-generated method stub
		return mianShiTiMuMapper.mstmfxpid(loginUsername, type);
	}
	@Override
	public void insertMstmJd(String loginUsername, Double type, Integer pid) {
		// TODO Auto-generated method stub
		mianShiTiMuMapper.insertMstmJd(loginUsername, type, pid);
	}
	@Override
	public MianShiTiMu startfx(Double type, Integer pid) {
		// TODO Auto-generated method stub
		return mianShiTiMuMapper.startfx(type, pid);
	}
	@Override
	public void updatemstmjd(String loginUsername, Double type, Integer pid) {
		// TODO Auto-generated method stub
	 mianShiTiMuMapper.updatemstmjd(loginUsername, type, pid);
	}

}

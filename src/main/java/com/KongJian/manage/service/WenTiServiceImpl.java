package com.KongJian.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.KongJian.manage.mapper.WenTiMapper;
import com.KongJian.manage.pojo.WenTi;

@Service
public class WenTiServiceImpl implements WenTiService{
	@Autowired
WenTiMapper wenTiMapper;

	@Override
	public List<WenTi> wtload() {
		
		return wenTiMapper.wtload();
	}
	
}

package com.KongJian.manage.controller;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.KongJian.manage.pojo.WenTi;
import com.KongJian.manage.service.WenTiService;

@Controller
public class WenTiController {
	@Autowired
private WenTiService wenTiService;
	
	
	
	@RequestMapping("wtload")
	@ResponseBody
	public List<WenTi> wtload(){
		List<WenTi> list=wenTiService.wtload();
		List<WenTi> list1 = new LinkedList();
		if(list.size()<=5) {
			
			return list;
			
		}else {
			
			
			
			
			for(int i=0;i<5;i++) {
				list1.add( list.get(i));
			
				
			}
			return list1;
			
		}
		
		}
	
	@RequestMapping("wtpages")
	@ResponseBody
	public Integer wtpages() {
		List<WenTi> list=wenTiService.wtload();
		Integer pages=list.size()/5;
		Integer pages1=list.size()%5;
		if(pages1==0) {
			return pages;
			
			
		}else {
			
			
			return pages+1;
		}
		
		
		
		
		
	}
	
	@RequestMapping("wtnext")
	@ResponseBody
	public List<WenTi> wtnext(Integer a){
		List<WenTi> list=wenTiService.wtload();
		Integer num=list.size();
		Integer numed=a*5;
		List<WenTi> list1=  new LinkedList();
		if((num-numed)>=5) {
			
			for(int i=(numed);i<(numed+5);i++) {
				
				list1.add(list.get(i));
				
				
			}
			
			return list1;
		}else {
			for(int i=(numed-1);i<num;i++) {
				
				list1.add(list.get(i));
				
				
			}
			return list1;
			
		}
		
		
		
		
		
		
	}
	@RequestMapping("wtfront")
	@ResponseBody
	public List<WenTi> wtfront(Integer a){
		System.out.println(a);
		Integer numed=(a-1)*5;
		List<WenTi> list=wenTiService.wtload();
		Integer num=list.size();
		List<WenTi> list1=new LinkedList();
		for(int i=(numed-5);i<numed;i++) {
			list1.add(list.get(i));
			
			
			
		}
		return list1;
		
		
		
		
	}
}

package com.KongJian.KJ_common;


import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import CGB.cgb;
import CGB.cgb2;

public class test {

	@Test
	 public void testSingleton() {
	
		ApplicationContext context1=new ClassPathXmlApplicationContext("spring/spring-abc.xml");
	ApplicationContext context2=new ClassPathXmlApplicationContext("spring/spring-abc.xml");
		   System.out.println(context1==context2);
		 cgb c1=(cgb) context1.getBean("cgb");
		 cgb c2=(cgb) context2.getBean("cgb");
		System.out.println(c1.getName());
		 
		 cgb2 c3=(cgb2) context1.getBean("cgb2");
		 cgb2 c4=(cgb2) context1.getBean("cgb2");
		 
		
		 /*
		  * ���Կ���context1��context2��������ͬ�Ķ���
		  * ���ڻ�ö���ʱҲִ�������ι��췽��
		  * 
		  */
		 
	 }
}

package com.tedu.test1;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.tedu.CGB1811;

public class test {

	@Test
	public void cgb1811() {
		
		ApplicationContext contest1=new ClassPathXmlApplicationContext("spring/spring-test.xml");
		
		ApplicationContext contest2=new ClassPathXmlApplicationContext("spring/spring-test.xml");
		
		
		System.out.println(contest1==contest2);
		
		CGB1811 c1= (CGB1811) contest1.getBean("bookDao");
		System.out.println(c1.getId());
		System.out.println(c1.getName());
		CGB1811 C2=(CGB1811) contest2.getBean("bookDao");
		System.out.println(c1==C2);
		
	}
}

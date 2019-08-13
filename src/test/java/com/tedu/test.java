package com.tedu;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {

	@Test
	public void cgb1811() {
		
		ApplicationContext contest1=new ClassPathXmlApplicationContext("spring/spring-test.xml");
		
		ApplicationContext contest2=new ClassPathXmlApplicationContext("spring/spring-test.xml");
		
		CGB1811 c1= (CGB1811) contest1.getBean("bookDao");
		
	}
}

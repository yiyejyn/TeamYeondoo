package com.inthemornin.ootd;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.inthemornin.ootd.service.IService;

public class Main {

	public static void main(String[] args) {
		
		AbstractApplicationContext context =
				new GenericXmlApplicationContext("spring/application-config.xml");
		IService clothService = 
				context.getBean("clothService", IService.class);
			
			System.out.println("-- 사원의 수 조회");
			System.out.println(clothService.getCount());
			System.out.println(clothService.getCount(10));
			
		context.close();
	}

}

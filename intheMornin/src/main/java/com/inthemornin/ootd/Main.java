package com.inthemornin.ootd;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.inthemornin.ootd.model.CustomerVO;
import com.inthemornin.ootd.service.IClothService;
import com.inthemornin.ootd.service.ICustomerService;

public class Main {

	public static void main(String[] args) {
		
		AbstractApplicationContext context =
				new GenericXmlApplicationContext("spring/application-config.xml");
		ICustomerService customerService = 
				context.getBean("customerService", ICustomerService.class);
			
			System.out.println("제발 뭐라도 되면 좋겠다...");
			System.out.println(customerService.getCount());
			System.out.println(customerService.getCount(10));
			
		context.close();
	}

}

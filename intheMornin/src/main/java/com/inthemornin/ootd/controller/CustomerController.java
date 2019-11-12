package com.inthemornin.ootd.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.inthemornin.ootd.service.ICustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	ICustomerService customerService;
	
	@RequestMapping(value="ootd/custcount") // URL주소 뒤에 해당 사이트에 요청을 보내라
	public String customerCount(
		@RequestParam(value="deptid", required=false, defaultValue="0") 
		int deptid, Model model) {
		if(deptid==0) {
			model.addAttribute("custcount", customerService.getCount());
		}else {
			model.addAttribute("custcount", customerService.getCount(deptid));
		}
		return "ootd/custcount";
	}
	

}

package com.inthemornin.ootd.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.inthemornin.ootd.model.CustomerVO;
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
	
	@RequestMapping(value="/join/add", method=RequestMethod.POST)
	public String insertCust(/*@ModelAttribute("cust") @Valid */CustomerVO cust, 
			Model model/*, RedirectAttributes redirectAttrs*/) {
//		try {
			customerService.insertCust(cust);
//		}catch(RuntimeException e) {
//			redirectAttrs.addFlashAttribute("message", e.getMessage());
//		}
		return "redirect:/join";
	}

}

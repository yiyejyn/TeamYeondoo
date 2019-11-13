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
	
	@RequestMapping("")
	public ModelAndView home(@ModelAttribute CustomerVO cust, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		return mav;
	}
	
	@RequestMapping("/login")
	public ModelAndView login(@ModelAttribute CustomerVO cust, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;
	}
	
	//로그인 처리
	@RequestMapping("/loginCheck")
	public ModelAndView loginCheck(@ModelAttribute CustomerVO vo, HttpSession session) {
		
		boolean result = customerService.loginCheck(vo, session);
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("login");
		
		if(result) {
			mav.addObject("msg","성공");
		}else {
			mav.addObject("msg","실패");
		}
		
		return mav;
	}
	
	//로그아웃 처리
	@RequestMapping("logout")
	public ModelAndView logout(HttpSession session) {
		
		customerService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("logout");
		mav.addObject("msg", "logout");
		
		return mav;
	}
	
	@RequestMapping("/join")
	public ModelAndView join(@ModelAttribute CustomerVO cust, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("join");
		return mav;
	}
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String insertCust(Model model) {
		System.out.println("You have entered the login maprequest");
		return "join";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String insertCust(/*@ModelAttribute("cust") @Valid */CustomerVO cust, 
			Model model/*, RedirectAttributes redirectAttrs*/) {
		customerService.insertCust(cust);
		System.out.println("You have entered the login maprequest...");
//		try {
//			customerService.insertCust(cust);
//		}catch(RuntimeException e) {
//			redirectAttrs.addFlashAttribute("message", e.getMessage());
//		}
		return "redirect:/login";
	}

	@RequestMapping(value="/custcount") // URL주소 뒤에 해당 사이트에 요청을 보내라
	public String customerCount(
		@RequestParam(value="deptid", required=false, defaultValue="0") 
		int deptid, Model model) {
		if(deptid==0) {
			model.addAttribute("custcount", customerService.getCount());
		}else {
			model.addAttribute("custcount", customerService.getCount(deptid));
		}
		return "/custcount";
	}
	
}

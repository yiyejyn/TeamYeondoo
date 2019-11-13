package com.inthemornin.ootd.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
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
	
	//go to Home
	@RequestMapping("")
	public ModelAndView home(@ModelAttribute CustomerVO cust, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		return mav;
	}
	
	//go to myPage
	@RequestMapping(value="/login/myPage", method=RequestMethod.GET)
	public String myPage(Model model) {
		System.out.println("You have entered the myPage maprequest");
		return "myPage";
	}
	
	//go to myCLoset
	@RequestMapping(value="/myPage/myClosetO", method=RequestMethod.GET)
	public String myClosetO(Model model) {
		System.out.println("You have entered the myClosetO maprequest");
		return "myClosetO";
	}
	
	//go to Login
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Model model) {
		System.out.println("되는거니?");
		return "login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(CustomerVO cust, Model model, HttpSession session) {
		System.out.println("여기까진 오니?");
		System.out.println(cust.getCustId());
		customerService.login(cust, session);
		return "home";
	}
	
	
	//Log in
	@RequestMapping(value="/loginCheck", method=RequestMethod.POST)
	public ModelAndView loginCheck(CustomerVO cust, HttpSession session) {
		
		boolean result = customerService.loginCheck(cust, session);
		ModelAndView mav = new ModelAndView();
		System.out.println(result);
		
		mav.setViewName("login");
		
		if(result) {
			mav.addObject("msg","성공");
		}else {
			mav.addObject("msg","실패");
		}
		
		return mav;
	}
	
	//Log out
	@RequestMapping(value="/logout")
	public ModelAndView logout(HttpSession session) {
		
		customerService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		mav.addObject("msg", "logout");
		
		return mav;
	}

	// go to Join
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String insertCust(Model model) {
		System.out.println("You have entered the Join maprequest");
		return "join";
	}
	
	// Join to DB
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String insertCust(/*@ModelAttribute("cust") @Valid */CustomerVO cust, 
			Model model/*, RedirectAttributes redirectAttrs*/) {
		customerService.insertCust(cust);
		System.out.println("You have inserted Join to DB");
		return "redirect:/login";
	}

	// Count customers
	@RequestMapping(value="/custcount") // URL주소 뒤에 해당 사이트에 요청을 보내라
	public String customerCount(
		@RequestParam(value="deptid", required=false, defaultValue="0") 
		String custId, int deptid, Model model) {
		if(deptid==0) {
			model.addAttribute("custcount", customerService.getCount());
		}else {
			model.addAttribute("custcount", customerService.getCount(custId));
		}
		return "/custcount";
	}
	
}

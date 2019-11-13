package com.inthemornin.ootd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.inthemornin.ootd.model.CustomerVO;

@Controller
public class MainController {
	
	@RequestMapping("")
	public ModelAndView home(@ModelAttribute CustomerVO cust, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		return mav;
	}
	
	@RequestMapping("/join")
	public ModelAndView join(@ModelAttribute CustomerVO cust, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("join");
		return mav;
	}
	
	@RequestMapping("/login")
	public ModelAndView login(@ModelAttribute CustomerVO cust, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;
	}
	
	
}

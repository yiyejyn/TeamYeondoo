package com.inthemornin.ootd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.inthemornin.ootd.model.CustomerVO;
import com.inthemornin.ootd.service.IService;

@Controller
public class CustomerController {
	
	@Autowired
	IService customerService;
	
	@RequestMapping(value="/hr/custcount") // URL주소 뒤에 해당 사이트에 요청을 보내라
	public String customerCount(
		@RequestParam(value="deptid", required=false, defaultValue="0") 
		int deptid, Model model) {
		if(deptid==0) {
			model.addAttribute("custcount", customerService.getCount());
		}else {
			model.addAttribute("custcount", customerService.getCount(deptid));
		}
		return "hr/custcount";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	//로그인 처리
	@RequestMapping(value="/loginCheck")
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
		mav.setViewName("login");
		mav.addObject("msg", "logout");
		
		return mav;
	}
}

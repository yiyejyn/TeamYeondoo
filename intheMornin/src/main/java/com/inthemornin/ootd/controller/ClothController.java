package com.inthemornin.ootd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.inthemornin.ootd.service.IClothService;

@Controller
public class ClothController {
	
	@Autowired
	IClothService clothService;
	
	@RequestMapping(value="/hr/clothcount") // URL주소 뒤에 해당 사이트에 요청을 보내라
	public String clothCount(
		@RequestParam(value="deptid", required=false, defaultValue="0") 
		int deptid, Model model) {
		if(deptid==0) {
			model.addAttribute("clothcount", clothService.getCount());
		}else {
			model.addAttribute("clothcount", clothService.getCount(deptid));
		}
		return "hr/clothcount";
	}
	


}

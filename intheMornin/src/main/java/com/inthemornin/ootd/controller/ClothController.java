package com.inthemornin.ootd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.inthemornin.ootd.model.ClothesVO;
import com.inthemornin.ootd.model.CustomerVO;
import com.inthemornin.ootd.service.IClothService;

@Controller
public class ClothController {
	
	@Autowired
	IClothService clothService;
	
	@RequestMapping(value="/ootd/clothcount") // URL주소 뒤에 해당 사이트에 요청을 보내라
	public String clothCount(
		@RequestParam(value="deptid", required=false, defaultValue="0") 
		int deptid, String custId, Model model) {
		if(deptid==0) {
			model.addAttribute("clothcount", clothService.getCount());
		}else {
			model.addAttribute("clothcount", clothService.getCustClothCount(custId));
		}
		return "ootd/clothcount";
	}
	
	@RequestMapping(value="/mycloset")
	public String getAllCloth(Model model) {
		List<ClothesVO> clothList = clothService.getClothList();
		model.addAttribute("clothList", clothList);
		return "mycloset(ooyd)";//???
	}
	
	@RequestMapping(value="/mycloset/{custId}")
	public String getClothInfo(@PathVariable String custId, Model model) {
		ClothesVO cloth = clothService.getClothInfo(custId);
		model.addAttribute("cloth", cloth);
		return "mycloset(ooyd)";//???
	}
	
	@RequestMapping(value="/mycloset/{custId}/", method=RequestMethod.POST)
	public String updateCloth(ClothesVO cloth, Model model) {
		clothService.updateCloth(cloth);
		return "redirect://"+cloth.getCustId();
	}
	
	//go to Upload
	@RequestMapping(value="/cloth", method=RequestMethod.GET)
	public String insertCloth(Model model) {
		System.out.println("You have entered the Upload maprequest");
		return "cloth";
	}
	
	//Upload to DB
	@RequestMapping(value="/cloth", method=RequestMethod.POST)
	public String insertCloth(ClothesVO cloth, CustomerVO cust, Model model) {
		clothService.insertCloth(cloth, cust);
		System.out.println("You have inserted Upload to DB");
		return "redirect:/mycloset";
	}

}
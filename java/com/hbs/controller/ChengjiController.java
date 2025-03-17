package com.hbs.controller;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hbs.dto.ChengjiDto;
import com.hbs.entity.Chengji;
import com.hbs.service.ChengjiService;

@Controller
@Validated
public class ChengjiController {
	
	@Autowired
	ChengjiService chengjiService;
	
//	@RequestMapping("/chengji")
//	public String Init(){
//		return "chengji";
//	}
	
	
	@RequestMapping("/chengji")
	public String chengji(ChengjiDto studto, Model model) {
		
		//System.out.println(chengjiService.getAll());
		System.out.println(studto);
		
		Chengji stu=new Chengji();
		BeanUtils.copyProperties(studto,stu);
		System.out.println("Mapped Chengji: " + stu);
		
		
		model.addAttribute("stulist", chengjiService.getAll());
		return "chengji";
	}
	

}

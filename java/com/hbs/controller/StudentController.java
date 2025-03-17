package com.hbs.controller;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hbs.dto.StudentDto;
import com.hbs.entity.Student;
import com.hbs.service.StudentService;

import jakarta.validation.Valid;

@Controller
@Validated
public class StudentController {
	
	@Autowired
	StudentService studentService;
	
	@RequestMapping("/student")
	public String Init(){
		return "studentAdd";
	}
	

	@RequestMapping("/studentAdd")
	public String StudentAdd(@Valid StudentDto studto,BindingResult binres,Model model) {
		//  ModelAndView mv=new ModelAndView();
		//	return studto;
		System.out.println("hello");
	    if(binres.hasErrors()){
	    	System.out.println("era- ");
	    	List<ObjectError> loe=binres.getAllErrors();
	    	System.out.println(loe);
	    	for(ObjectError oe:loe) {
	    		System.out.println(oe.getObjectName()+":"+oe.getDefaultMessage());
	    	}
	    }
		
		
		model.addAttribute("studto",studto);
		return "studentConfirm";
	}
	
	@RequestMapping("/studentAdd2")
	public String StudentAdd2(@Valid @ModelAttribute("studto") StudentDto studto, BindingResult bindingresult,Model model) {
		//  ModelAndView mv=new ModelAndView();
		//	return studto;	
	    if(bindingresult.hasErrors()){
	    	
	    	System.out.println("era-");
	    }
		
		
		model.addAttribute("studto",studto);
		return "studentConfirm";
	}
	
	@RequestMapping("/Add")
	public String Add(StudentDto studto, Model model) {
		
		//System.out.println(studentService.getAll());
		System.out.println(studto);
		
		Student stu=new Student();
		BeanUtils.copyProperties(studto,stu);
		
		studentService.insert(stu);
		
		model.addAttribute("stulist", studentService.getAll());
		return "studentList";
	}
	
	@RequestMapping("/Cancel")
	public String Cancel() {
		
		
		return "studentAdd";
	}

}

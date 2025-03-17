package com.hbs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hbs.dao.StudentDao;
import com.hbs.entity.Student;
import com.hbs.service.StudentService;

@Service
public class StudenServiceImpl implements StudentService{
	
	@Autowired
	StudentDao studentDao;
	
	@Override
	public List<Student> getAll() {
		return studentDao.selectAll();
	}

	@Override
	public void insert(Student stu) {
		
		
		
		
		studentDao.add(stu);
	}

	
	
	
	
	
}

package com.hbs.service;

import java.util.List;

import com.hbs.entity.Student;

public interface StudentService {
	
	public List<Student> getAll();
	
	public void insert(Student stu);
	
	
	
}

package com.hbs.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hbs.entity.Student;

@Repository
public interface StudentDao {
	
	public List<Student> selectAll();
	
	public boolean add(Student st);
	
	public boolean addAll(List<Student> lst);
	
	

}

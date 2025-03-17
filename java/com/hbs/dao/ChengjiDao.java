package com.hbs.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hbs.entity.Chengji;

@Repository
public interface ChengjiDao {
	
	public List<Chengji> selectAll();
	

	
	

}

package com.hbs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hbs.dao.ChengjiDao;
import com.hbs.entity.Chengji;
import com.hbs.service.ChengjiService;

@Service
public class ChengjiServiceImpl implements ChengjiService{
	
	@Autowired
	ChengjiDao chengjiDao;
	
	@Override
	public List<Chengji> getAll() {
		return chengjiDao.selectAll();
	}



	
	
	
	
	
}

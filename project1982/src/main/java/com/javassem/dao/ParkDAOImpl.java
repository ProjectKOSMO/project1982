package com.javassem.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository()
public class ParkDAOImpl implements ParkDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
}

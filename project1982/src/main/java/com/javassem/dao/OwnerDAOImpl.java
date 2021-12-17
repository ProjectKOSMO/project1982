package com.javassem.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.domain.OwnerVO;

@Repository("ownerDAO")
public class OwnerDAOImpl implements OwnerDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public OwnerVO idCheck(OwnerVO vo) {
		System.out.println("===> OwnerMapper idCheck 호출");
		return mybatis.selectOne("owner.idCheck", vo);
	}

	@Override
	public int ownerInsert(OwnerVO vo) {
		System.out.println("===>  MemberMapper ownerInsert() 호출");
		return mybatis.insert("owner.ownerInsert", vo);
	}

	@Override
	public OwnerVO ownerLogin(OwnerVO vo) {
		System.out.println("===> OwnerMapper idCheck 호출");
		return mybatis.selectOne("owner.idCheck", vo);
	}
	
	public String ownerDate(OwnerVO vo){
		return mybatis.selectOne("sample.getDate", vo);
	}
}

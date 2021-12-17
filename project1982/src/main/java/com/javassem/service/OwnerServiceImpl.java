package com.javassem.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.OwnerDAOImpl;
import com.javassem.domain.OwnerVO;

@Service("ownerService")
public class OwnerServiceImpl implements OwnerService{

	@Autowired
	private OwnerDAOImpl ownerDAO;
	
	
	/**
	  * 아이디 중복 체크하는 sql + 로그인 기능 sql
	  */
	  public OwnerVO idCheck_Login(OwnerVO vo)
	  {
		  return ownerDAO.idCheck(vo);
	  }
	  
	  
	  /**
	   * 회원가입 sql
	   */
	   public int ownerInsert(OwnerVO vo)
	   {
		  return ownerDAO.ownerInsert(vo);
	   }
	   
	   public String ownerDate(OwnerVO vo){
		   return ownerDAO.ownerDate(vo);
	   }
	   
}

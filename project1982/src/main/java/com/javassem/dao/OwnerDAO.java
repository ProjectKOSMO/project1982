package com.javassem.dao;

import com.javassem.domain.OwnerVO;

public interface OwnerDAO {
	/**
	 * id 중복체트 기능 구현
	 */	
	OwnerVO  idCheck( OwnerVO vo );
	
	/**
	 * 회원가입기능 구현
	 */
	int ownerInsert(OwnerVO vo);
	
	/**
	 * 로그인 확인 기능 구현
	 */
	OwnerVO ownerLogin(OwnerVO vo);
	
}

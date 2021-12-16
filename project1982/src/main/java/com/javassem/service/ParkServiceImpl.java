package com.javassem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.MemberDAO;
import com.javassem.domain.ParkVO;

@Service("ParkService")
public class ParkServiceImpl implements ParkService{
	
	@Autowired
	private ParkDAO ParkDAO;

	@Override
	public ParkVO idCheck_Login(ParkVO vo) {
		
		return memberDAO.idCheck(vo);
	}

}

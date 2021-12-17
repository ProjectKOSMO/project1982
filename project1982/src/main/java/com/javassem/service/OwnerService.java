package com.javassem.service;

import com.javassem.domain.OwnerVO;

public interface OwnerService {
	public OwnerVO idCheck_Login(OwnerVO vo);
	public int ownerInsert(OwnerVO vo );
	public String ownerDate(OwnerVO vo);
}

package com.javassem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javassem.domain.OwnerVO;
import com.javassem.domain.UserVO;
import com.javassem.service.OwnerService;

@Controller
@RequestMapping("owner")
public class OwnerLoginController {
	
	@RequestMapping("{step}.do")
	public String ownerJoin(@PathVariable String step){
		return "/owner/" + step;
	}
	
	@Autowired
	public OwnerService ownerService;
	
	@RequestMapping("ownerInsert.do")
	public String userinsert(OwnerVO vo){
		ownerService.ownerInsert(vo);
		return "redirect:owner_login.do";
	}
	
	@RequestMapping("login.do")
	public String ownerLogin(OwnerVO vo){
		OwnerVO result =  ownerService.idCheck_Login(vo);
		
		if(result == null){
			return "/owner/owner_login";
			
		}else{
			return "main";
		}
	}
	
	@RequestMapping(value="idCheck.do", produces="application/text; charset=UTF-8")
	@ResponseBody
	public String idCheck(OwnerVO vo){
		OwnerVO result = ownerService.idCheck_Login(vo);
		String message = "사용가능한 아이디 입니다.";
		if(result != null) message = "이미 사용중인 아이디 입니다.";
		return message;
	}

}

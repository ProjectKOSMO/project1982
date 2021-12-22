package com.javassem.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javassem.domain.OwnerBoardVO;
import com.javassem.domain.OwnerVO;
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
	public String ownerInsert(OwnerVO vo){
		ownerService.ownerInsert(vo);
		return "redirect:owner_login.do";
	}
	
	@RequestMapping("ownerBoardInsert.do")
	public String ownerBoardInsert(OwnerBoardVO vo, Model m){
		
		String jobDate = vo.getJobDate();
//		vo.setJobDate(jobDate);
		System.out.println(jobDate);
		
		ownerService.ownerBoardInsert(vo);  // 정보 입력
		//---------------------------------------------------
		List<OwnerBoardVO> list = ownerService.getOwnerBoardList(vo); // 정보 표시
		m.addAttribute("ownerBoardList",list);
		return "/owner/job_positing";
//		return "redirect:getBoardList.do";

	}
	
//	@RequestMapping("getBoardList.do")
//	public String select(OwnerBoardVO vo, Model m) {
//		List<OwnerBoardVO> list = ownerService.getOwnerBoardList(vo);
//		m.addAttribute("ownerBoardList",list);
//		return "/owner/job_positing";
//	}
	
	@RequestMapping("login.do")
	public String ownerLogin(OwnerVO vo, OwnerBoardVO boardVo, Model m, HttpServletRequest request) throws Exception{
		
		//--------------------------------------------------
		OwnerVO result =  ownerService.idCheck_Login(vo);
		
		if(result == null){
			return "/owner/owner_login";
			
		}else{
			// 세션에  owernnum, ownerid 추가 --------------------------------------------------

			HttpSession session = request.getSession();
			session.setAttribute("ownernum", result.getOwnernum());
			session.setAttribute("ownerid", result.getOwnerid());
			// 게시판 리스트 추가 --------------------------------------------------
			List<OwnerBoardVO> list = ownerService.getOwnerBoardList(boardVo);
			m.addAttribute("ownerBoardList",list);		
		
			return "/owner/job_positing"; // 로그인 성공시 세션으로 아이디를 저장하는 페이지로 이동
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

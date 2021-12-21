package com.javassem.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javassem.domain.PagingVO;
import com.javassem.domain.ParkBlackVO;
import com.javassem.domain.ParkVO;
import com.javassem.domain.ParkownerVO;
import com.javassem.domain.UserVO;
import com.javassem.service.ParkBlackService;
import com.javassem.service.ParkService;
import com.javassem.service.ParkownerService;
import com.javassem.service.UserService;

@Controller
public class ParkController {
	
	
	@Autowired
	public ParkService parkService;
	@Autowired
	public ParkBlackService parkBlackService;
	@Autowired
	public ParkownerService parkownerService;
	
	@RequestMapping("admin/{step}.do")
	public String parkJoin(@PathVariable String step){
		System.out.println("호출");
		return "/admin/" +step;
	}
	
	@RequestMapping("admin/adminPage.do")
	public String userLogin(ParkVO vo,Model m,Model m2,PagingVO vo1){
		ParkVO result =  parkService.idCheck_Login(vo);
		if(result != null){
			System.out.println("리스트");
			List<ParkBlackVO> list = parkBlackService.getBlackList(vo1);
			m.addAttribute("blacklist",list);
			
			List<ParkownerVO> list2 = parkownerService.getOwnerList(vo1);
			m2.addAttribute("ownerlist",list2);
			
			System.out.println(list);
			System.out.println(list2);
			return "/admin/" + "adminPage";
			
		}else{
			System.out.println("실패");
			return "./main";
		}
	}
	@GetMapping("blackList")
	public String BlackList(PagingVO vo, Model model
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		
		int total = parkBlackService.countBoard();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo);
		model.addAttribute("viewAll", parkBlackService.getBlackList(vo));
		return "board/boardPaging";
	}
	
	@GetMapping("ownerList")
	public String OwnerList(PagingVO vo, Model model
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
		
		int total = parkownerService.countBoard();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo);
		model.addAttribute("viewAll", parkownerService.getOwnerList(vo));
		return "board/boardPaging";
	}

}

package com.yorizip.community.view.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yorizip.community.board.communityService;
import com.yorizip.community.board.communityVO;

@Repository
public class BoardController {
	
	@Autowired
	private communityService communityservice;
	
	//글 삽입
	@RequestMapping(value="/insertBoard.do")
	public String insertBoard(communityVO vo) throws IllegalStateException {
		
		communityservice.insertBoard(vo);
		return "redirect:getBoardList.do";
	}
	
	//글 수정
	@RequestMapping("/updateBoard.do")
	public String updateBoard(@ModelAttribute("board") communityVO vo) {
		
		
		System.out.println(vo.getCom_num());
		System.out.println(vo.getCom_title());
		System.out.println(vo.getCom_content());
		System.out.println(vo.getCom_image());
	
		communityservice.updateBoard(vo);
		return "redirect:getBoardList.do";
	}
	
	// 글 삭제
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(communityVO vo) {

		communityservice.deleteBoard(vo);
		return "redirect:getBoardList.do";
	}
		
	// 글 상세 조회
	@RequestMapping("/getBoard.do")
	public String getBoard(communityVO vo, Model model) {
			
		model.addAttribute("board", communityservice.getBoard(vo));     
		return "getBoard.jsp";	
	}

//	// 글 목록 검색
//	@RequestMapping("/getBoardList.do")
//	public String getBoardList(communityVO vo, Model model) {
//			
//		if(vo.getSearchCondition() == null) {
//			vo.setSearchCondition("TITLE");
//		}
//		
//		if(vo.getSearchKeyword() == null) {
//			vo.setSearchKeyword("");
//		}
//			
//		model.addAttribute("boardList", communityservice.getBoardList(vo));
//		return "getBoardList.jsp"; 	
//	}
	
	
}

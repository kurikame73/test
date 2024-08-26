package com.yorizip.community.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yorizip.community.board.communityService;
import com.yorizip.community.board.communityVO;

@Service("communityService")
public class communityServiceimpl implements communityService{
	
	@Autowired
	private communityDAO communityDAO;
	
	public communityServiceimpl() {
		
	}

	@Override
	public void insertBoard(communityVO vo) {
		
		communityDAO.insertBoard(vo);
		
	}

	@Override
	public void updateBoard(communityVO vo) {

		communityDAO.updateBoard(vo);
	
	}

	@Override
	public void deleteBoard(communityVO vo) {
		
		communityDAO.deleteBoard(vo);
		
	}

	@Override
	public communityVO getBoard(communityVO vo) {
		
		return communityDAO.getBoard(vo);
	}

	@Override
	public List<communityVO> getBoardList(communityVO vo) {
		
		return communityDAO.getBoardList(vo);
	}
	
	
	
}

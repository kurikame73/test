package com.yorizip.community.board;

import java.util.List;

public interface communityService {
	// 글등록
	void insertBoard(communityVO vo);
	
	// 글 수정
	void updateBoard(communityVO vo);
	
	// 글 삭제
	void deleteBoard(communityVO vo);
	
	// 글 상세 조회
	communityVO getBoard(communityVO vo);
	
	// 글 목록 조회
	List<communityVO> getBoardList(communityVO vo);
}

package com.yorizip.community.board;

import java.util.List;

public interface communityService {
	// �۵��
	void insertBoard(communityVO vo);

	// �� ����
	void updateBoard(communityVO vo);

	// �� ����
	void deleteBoard(communityVO vo);

	// �� �� ��ȸ
	communityVO getBoard(communityVO vo);

	// �� ��� ��ȸ
	List<communityVO> getBoardList(communityVO vo);
}

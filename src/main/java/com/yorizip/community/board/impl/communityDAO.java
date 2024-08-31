package com.yorizip.community.board.impl;

import java.io.File;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.yorizip.community.board.SqlSessionFactoryBean;
import com.yorizip.community.board.communityVO;

@Repository("communityDAO")
public class communityDAO {

	@Autowired
	private SqlSession mybatis;

	private final String insert_board = "insert into community(num, title, content, image) values"
			+ " ((select nvl(max(seq),0) + 1 from community),?,?,?)";

	private final String update_board = "update community set title=?, content=? where seq=?";
	private final String delete_board = "delete communityboard where seq=?";
	private final String getboard = "select * from community where seq=?";
	private final String getboardList = "select * from community order by seq desc";


	public void insertBoard(communityVO vo) {

		System.out.println("===> Mybatis�� insertBoard() ��� ó��");
		mybatis.insert("BoardDAO.insertBoard", vo);
	}

	public void updateBoard(communityVO vo) {
		System.out.println("===> Mybatis�� updateBoard() ��� ó��");
		mybatis.update("BoardDAO.updateBoard", vo);
	}

	public void deleteBoard(communityVO vo) {
		System.out.println("===> Mybatis�� deleteBoard() ��� ó��");
		mybatis.delete("BoardDAO.deleteBoard", vo);
	}

	public communityVO getBoard(communityVO vo) {
		System.out.println("===> Mybatis�� getBoard() ��� ó��");
		return (communityVO) mybatis.selectOne("BoardDAO.getBoard", vo);
	}

	public List<communityVO> getBoardList(communityVO vo) {
		System.out.println("===> Mybatis�� getBoardList() ��� ó��");
		return mybatis.selectList("BoardDAO.getBoardList", vo);
	}


}

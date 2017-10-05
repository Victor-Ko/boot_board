package com.victor.board.dao;

import java.util.List;

import com.victor.board.domain.BoardVO;

public interface BoardDao {

	//글 작성
	public void boardInsert(BoardVO board)throws Exception;
	
	//글 목록 호출
	public List<BoardVO> boardSelect()throws Exception;
	
	//글 상세 호출
	public BoardVO boardDetail(int seq)throws Exception;
	
	//조회수 증가
	public void hitUpdate(int seq)throws Exception;
	
	//글 수정
	public void boardUpdate(BoardVO board)throws Exception;
	
	//글 삭제
	public void boardDelete(int seq)throws Exception;
}

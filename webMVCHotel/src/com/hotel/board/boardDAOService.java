package com.hotel.board;

import java.util.List;

public interface boardDAOService {
	//레코드 선택(1페이지)
	public List<boardVO> boardAllRecord(PagingVO pageVO);
	//레코드 선택1개, 글수정폼, 글내용보기
	public void boardSelect(boardVO vo);
	//글등록
	public int boardInsert(boardVO vo);
	//글수정
	public int boardUpdate(boardVO vo);
	//글삭제
	public int boardDelete(int no);
	
}

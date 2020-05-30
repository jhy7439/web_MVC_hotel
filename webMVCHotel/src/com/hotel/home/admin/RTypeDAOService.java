package com.hotel.home.admin;

import java.util.List;

public interface RTypeDAOService {

	//등록
	public int typeInsert(RTypeVO vo);
	
	//목록
	public List<RTypeVO> typeList();
	
	//선택
	public void typeSelect(RTypeVO vo);
	
	//수정
	public int typeUpdate(RTypeVO vo);
	
	//삭제
	public int typeDelete(RTypeVO vo);
}

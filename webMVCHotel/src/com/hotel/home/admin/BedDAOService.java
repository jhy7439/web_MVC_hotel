package com.hotel.home.admin;

import java.util.List;

public interface BedDAOService {
	// 침대 리스트
	public List<BedVO> bedList();
	
	// 침대 레코드 선택
	public void bedSelect(BedVO vo);
	
	// 침대 등록
	public int bedInsert(BedVO vo);
	
	// 침대 수정
	public int bedUpdate(BedVO vo);
	
	// 침대 삭제 : 일련번호로 검색
	public int bedDelete(int no);

}

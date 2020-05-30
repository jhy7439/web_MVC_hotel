package com.hotel.home.admin;

import java.util.List;

public interface RoomDAOService {

	//객실 리스트
	public List<RoomVO> roomList();
	//객실 레코드 선택
	public void roomSelect(RoomVO vo);
	//객실 등록
	public int roomInsert(RoomVO vo);
	//객실 수정
	public int roomUpdate(RoomVO vo);
	//객실 삭제
	public int roomDelete(int no);
}

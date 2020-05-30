package com.hotel.home.admin;

import java.util.List;


public interface EventsDAOService {
	//레코드선택
		public List<EventsVO> EventAllRecord(PagingVO pageVO);
		//레코드 선택(1개),글수정폼,글내용보기
		public void EventSelect(EventsVO vo);
		//글등록
		public int EventInsert(EventsVO vo);
		//글수정
		public int EventUpdate(EventsVO vo);
		//삭제
		public int EventDelete(EventsVO vo);
}

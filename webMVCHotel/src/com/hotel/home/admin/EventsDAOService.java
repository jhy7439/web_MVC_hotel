package com.hotel.home.admin;

import java.util.List;


public interface EventsDAOService {
	//���ڵ弱��
		public List<EventsVO> EventAllRecord(PagingVO pageVO);
		//���ڵ� ����(1��),�ۼ�����,�۳��뺸��
		public void EventSelect(EventsVO vo);
		//�۵��
		public int EventInsert(EventsVO vo);
		//�ۼ���
		public int EventUpdate(EventsVO vo);
		//����
		public int EventDelete(EventsVO vo);
}

package com.hotel.board;

import java.util.List;

public interface boardDAOService {
	//���ڵ� ����(1������)
	public List<boardVO> boardAllRecord(PagingVO pageVO);
	//���ڵ� ����1��, �ۼ�����, �۳��뺸��
	public void boardSelect(boardVO vo);
	//�۵��
	public int boardInsert(boardVO vo);
	//�ۼ���
	public int boardUpdate(boardVO vo);
	//�ۻ���
	public int boardDelete(int no);
	
}

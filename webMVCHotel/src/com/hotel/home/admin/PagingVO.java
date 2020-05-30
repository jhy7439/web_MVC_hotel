package com.hotel.home.admin;

public class PagingVO {
	private int pageNum=1;//��������
	private int onePageRecord=9;//�������� ����� ���ڵ��
	private int totalRecord;//�ѷ��ڵ��
	private int totalPage;//����������
	private int startPage=1;//���������� ��ȣ
	private int onePageCount=10;//�ѹ��� ����� ����������
	//���������� ����� ���ڵ� ��
	public PagingVO() {
	
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
		//���������� ���
		startPage = ((pageNum-1)/onePageCount)*onePageCount+1;
		System.out.println(startPage);
		
	}
	public int getOnePageRecord() {
		return onePageRecord;
	}
	public void setOnePageRecord(int onePageRecord) {
		this.onePageRecord = onePageRecord;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		
		this.totalRecord = totalRecord;
		totalPage =(int)Math.ceil((double)totalRecord/onePageRecord);
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getOnePageCount() {
		return onePageCount;
	}
	public void setOnePageCount(int onePageCount) {
		this.onePageCount = onePageCount;
	}
}
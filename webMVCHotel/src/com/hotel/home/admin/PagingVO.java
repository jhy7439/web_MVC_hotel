package com.hotel.home.admin;

public class PagingVO {
	private int pageNum=1;//한페이지
	private int onePageRecord=9;//한페이지 출력할 레코드수
	private int totalRecord;//총레코드수
	private int totalPage;//총페이지수
	private int startPage=1;//시작페이지 번호
	private int onePageCount=10;//한번에 출력할 페이지갯수
	//한페이지에 출력할 레코드 수
	public PagingVO() {
	
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
		//시작페이지 계산
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
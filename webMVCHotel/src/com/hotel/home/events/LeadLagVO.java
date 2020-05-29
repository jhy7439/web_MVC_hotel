package com.hotel.home.events;

public class LeadLagVO {
	private int leadNo;  //이전글 레코드 번호
	private String leadSubject;  //이전글 제목
	private int lagNo;  //다음글 레코드 번호
	private String lagSubject;  //다음글 제목
	
	public LeadLagVO() {
	}

	public int getLeadNo() {
		return leadNo;
	}

	public void setLeadNo(int leadNo) {
		this.leadNo = leadNo;
	}

	public String getLeadSubject() {
		return leadSubject;
	}

	public void setLeadSubject(String leadSubject) {
		this.leadSubject = leadSubject;
	}

	public int getLagNo() {
		return lagNo;
	}

	public void setLagNo(int lagNo) {
		this.lagNo = lagNo;
	}

	public String getLagSubject() {
		return lagSubject;
	}

	public void setLagSubject(String lagSubject) {
		this.lagSubject = lagSubject;
	}	
}

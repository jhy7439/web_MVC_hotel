package com.hotel.board;

public class boardVO {
	private int no;
	private String questionType;
	private String subject;
	private String content;
	private String name;
	private String tel;
	private String writeDate;
	private String ip;
	private String publicPrivate;
	
	public boardVO() {
		
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getQuestionType() {
		return questionType;
	}
	public void setQuestionType(String questionType) {
		this.questionType = questionType;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getPublicPrivate() {
		return publicPrivate;
	}
	public void setPublicPrivate(String publicPrivate) {
		this.publicPrivate = publicPrivate;
	}
	
}

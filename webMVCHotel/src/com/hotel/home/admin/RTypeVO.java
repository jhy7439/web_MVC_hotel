package com.hotel.home.admin;

public class RTypeVO {

	private int room_tpye_code;//객실타입코드
	private String room_type;//객실타입
	private int bed_code;//침대코드
	
	private String dsp;
	private String room_size;//객실 크기
	private String room_loc;//위치
	private String content;//세부내용
	
	
	private String mainImg;//메인 이미지
	private String subImgs[]=new String[10];//서브 이미지 최대 10개
	
	
	public RTypeVO() {
		
	}


	public int getRoom_tpye_code() {
		return room_tpye_code;
	}


	public void setRoom_tpye_code(int room_tpye_code) {
		this.room_tpye_code = room_tpye_code;
	}


	public String getRoom_type() {
		return room_type;
	}


	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}


	public int getBed_code() {
		return bed_code;
	}


	public void setBed_code(int bed_code) {
		this.bed_code = bed_code;
	}


	public String getDsp() {
		return room_size +"`"+room_loc+"`"+content;
	}


	public void setDsp(String dsp) {
		this.dsp = dsp;
		String strDsp[]=dsp.split("`");
		room_size = strDsp[0];
		room_loc = strDsp[1];
		content = strDsp[2];
	}


	public String getRoom_size() {
		return room_size;
	}


	public void setRoom_size(String room_size) {
		this.room_size = room_size;
	}


	public String getRoom_loc() {
		return room_loc;
	}


	public void setRoom_loc(String room_loc) {
		this.room_loc = room_loc;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getMainImg() {
		return mainImg;
	}


	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}


	public String[] getSubImgs() {
		return subImgs;
	}


	public void setSubImgs(String[] subImgs) {
		this.subImgs = subImgs;
	}

	
}

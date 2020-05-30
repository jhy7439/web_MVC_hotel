package com.hotel.home.admin;

import java.util.ArrayList;
import java.util.List;

import com.sun.xml.internal.ws.util.StringUtils;

public class RTypeVO {

	private int room_type_code;//객실타입코드
	private String room_type;//객실타입
	private int event_code;//이벤트코드
	private String dsp;//설명
	
	private String view;//전망
	private String room_loc;//위치
	private String room_size;//객실 크기
	private String mainCont; //메인컨텐츠
	private String subCont;//서브컨텐츠
	
	private String chkBox1;
	private String chkBox2;
	private String chkBox3;
	private String chkBox4;
	private String chkBox5;
	private String chkBox6;
	private String chkBox7;
	private String chkBox8;
	private String chkBox9;
	private String chkBox10;
	private String chkBox11;

	private List<String> roomImgList;// 인덱스 0: 메인이미지
	private String img; //리스트에 담긴 이미지 이름을 구분자를 넣어 담는다.
	public RTypeVO() {
		
	}

	public int getRoom_type_code() {
		return room_type_code;
	}

	public void setRoom_type_code(int room_type_code) {
		this.room_type_code = room_type_code;
	}

	public String getRoom_type() {
		return room_type;
	}

	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}

	public int getEvent_code() {
		return event_code;
	}

	public void setEvent_code(int event_code) {
		this.event_code = event_code;
	}

	public String getDsp() {
		return view+"%!"+room_loc+"%!"+room_size+"%!"
				+mainCont+"%!"+subCont+"%!"
				+chkBox1+"%!"+chkBox2+"%!"+chkBox3+"%!"
				+chkBox4+"%!"+chkBox5+"%!"+chkBox6+"%!"
				+chkBox7+"%!"+chkBox8+"%!"+chkBox9+"%!"
				+chkBox10+"%!"+chkBox11;
	}

	public void setDsp(String dsp) {
		this.dsp = dsp;
		System.out.println("dsp 값: "+ dsp);
		String d[] = dsp.split("%!");
		System.out.println("d 사이즈 : "+ d.length);
		view = d[0];
		room_loc = d[1];
		room_size = d[2];
		mainCont = d[3];
		subCont = d[4];
		chkBox1 = d[5];
		chkBox2 = d[6];
		chkBox3 = d[7];
		chkBox4 = d[8];
		chkBox5 = d[9];
		chkBox6 = d[10];
		chkBox7 = d[11];
		chkBox8 = d[12];
		chkBox9 = d[13];
		chkBox10 = d[14];
		chkBox11 = d[15];

		
	}

	public String getView() {
		return view;
	}

	public void setView(String view) {
		this.view = view;
	}

	public String getRoom_loc() {
		return room_loc;
	}

	public void setRoom_loc(String room_loc) {
		this.room_loc = room_loc;
	}

	public String getRoom_size() {
		return room_size;
	}

	public void setRoom_size(String room_size) {
		this.room_size = room_size;
	}

	public String getMainCont() {
		return mainCont;
	}

	public void setMainCont(String mainCont) {
		this.mainCont = mainCont;
	}

	public String getSubCont() {
		return subCont;
	}

	public void setSubCont(String subCont) {
		this.subCont = subCont;
	}

	public String getChkBox1() {
		return chkBox1;
	}

	public void setChkBox1(String chkBox1) {
		this.chkBox1 = chkBox1;
	}

	public String getChkBox2() {
		return chkBox2;
	}

	public void setChkBox2(String chkBox2) {
		this.chkBox2 = chkBox2;
	}

	public String getChkBox3() {
		return chkBox3;
	}

	public void setChkBox3(String chkBox3) {
		this.chkBox3 = chkBox3;
	}

	public String getChkBox4() {
		return chkBox4;
	}

	public void setChkBox4(String chkBox4) {
		this.chkBox4 = chkBox4;
	}

	public String getChkBox5() {
		return chkBox5;
	}

	public void setChkBox5(String chkBox5) {
		this.chkBox5 = chkBox5;
	}

	public String getChkBox6() {
		return chkBox6;
	}

	public void setChkBox6(String chkBox6) {
		this.chkBox6 = chkBox6;
	}

	public String getChkBox7() {
		return chkBox7;
	}

	public void setChkBox7(String chkBox7) {
		this.chkBox7 = chkBox7;
	}

	public String getChkBox8() {
		return chkBox8;
	}

	public void setChkBox8(String chkBox8) {
		this.chkBox8 = chkBox8;
	}

	public String getChkBox9() {
		return chkBox9;
	}

	public void setChkBox9(String chkBox9) {
		this.chkBox9 = chkBox9;
	}

	public String getChkBox10() {
		return chkBox10;
	}

	public void setChkBox10(String chkBox10) {
		this.chkBox10 = chkBox10;
	}

	public String getChkBox11() {
		return chkBox11;
	}

	public void setChkBox11(String chkBox11) {
		this.chkBox11 = chkBox11;
	}

	public List<String> getRoomImgList() {
		return roomImgList;
	}

	public void setRoomImgList(List<String> roomImgList) {
		this.roomImgList = roomImgList;		
		
		//리스트를 구분자를 포함하여 문자열로 바꾸기
		
		String[] array = new String[roomImgList.size()];
		int idx =0;
		for(String temp : roomImgList) {
			array[idx++] = temp;
		}
		
		String str = "/";
		// array에서 문자열을 읽어와 ' | '를 구분자로 연결.
		img = String.join(str,array);

		
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
		
		//문자열을 구분자를 제거한 후 리스트로 바꾸기
		String str = "/";
		System.out.println("img  = "+img);
		String[] array = img.split(str);
		System.out.println("array 배열 길이 : " + array.length);
		System.out.println("array0 : "+array[0]);
		roomImgList = new ArrayList<String>();
		for(String temp : array) {
		
			roomImgList.add(temp);
		}
	}

}

package com.hotel.home.admin;

public class EventsVO {
	private int room_event_code;
	private String room_event_name;
	private String event_type;
	private String event_img;
	private String dsp;
	private String sub_dsp;
	private String action;
	private String event_start_date;
	private String event_end_date;
	
	private String delfile;
	//--페이징에 사용할 변수
	//검색
	public EventsVO() {
		
	}
	public int getRoom_event_code() {
		return room_event_code;
	}
	public void setRoom_event_code(int room_event_code) {
		this.room_event_code = room_event_code;
	}
	public String getRoom_event_name() {
		return room_event_name;
	}
	public void setRoom_event_name(String room_event_name) {
		this.room_event_name = room_event_name;
	}
	public String getEvent_type() {
		return event_type;
	}
	public void setEvent_type(String event_type) {
		this.event_type = event_type;
	}
	public String getEvent_img() {
		return event_img;
	}
	public void setEvent_img(String event_img) {
		this.event_img = event_img;
	}
	public String getDsp() {
		return dsp;
	}
	public void setDsp(String dsp) {
		this.dsp = dsp;
	}
	public String getSub_dsp() {
		return sub_dsp;
	}
	public void setSub_dsp(String sub_dsp) {
		this.sub_dsp = sub_dsp;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public String getEvent_start_date() {
		return event_start_date;
	}
	public void setEvent_start_date(String event_start_date) {
		this.event_start_date = event_start_date;
	}
	public String getEvent_end_date() {
		return event_end_date;
	}
	public void setEvent_end_date(String event_end_date) {
		this.event_end_date = event_end_date;
	}
}

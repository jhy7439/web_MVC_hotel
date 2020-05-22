package com.hotel.home.member;

public class memberVO {
	private int member_code;
	private String user_name;
	private String user_en_name;
	private String user_en_firstname;
	private String user_last_name;
	private String user_tel;
	private String tel1;
	private String tel2;
	private String tel3;
	private String user_email;
	private String email_id;
	private String email_domain;
	private String zipcode;
	private String addr;
	private String addrdetail;
	private String user_id;
	private String user_pwd;
	private String birthday;
	private String year;
	private String month;
	private String day;
	
	private String regdate;
	private String log_date;
	private String loginStatus="N";
	public memberVO() {

	}
	public String toString() {
		return member_code+"/"+user_name+"/"+user_en_name+"/"+user_tel+"/"+user_email+"/"+zipcode+addr+"/"+addrdetail+"/"+user_id+"/"+user_pwd+"/"+birthday+"/"+regdate;
	}
	public memberVO(int member_code,String user_name,String user_en_name,String user_tel,String user_email,String user_id,String user_pwd,String birthday,String regdate,String log_date) {
			this.member_code=member_code;
			this.user_name=user_name;
			this.user_en_name=user_en_name;
			this.user_tel=user_tel;
			this.user_email=user_email;
			this.user_id=user_id;
			this.user_pwd=user_pwd;
			this.birthday=birthday;
			this.regdate=regdate;
			this.log_date=log_date;

	}
	public int getMember_code() {
		return member_code;
	}
	public void setMember_code(int member_code) {
		this.member_code = member_code;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_en_name() {
		return user_en_name;
	}
	public void setUser_en_name(String user_en_name) {
		this.user_en_name = user_en_name;
	}
	
	public String getUser_en_firstname() {
		return user_en_firstname;
	}
	public void setUser_en_firstname(String user_en_firstname) {
		this.user_en_firstname = user_en_firstname;
	}
	public String getUser_last_name() {
		return user_last_name;
	}
	public void setUser_last_name(String user_last_name) {
		this.user_last_name = user_last_name;
	}
	public String getUser_tel() {
		return tel1+"-"+tel2+"-"+tel3;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
		String t[]=user_tel.split("-");
		tel1 = t[0];
		tel2 = t[1];
		tel3 = t[2];
	}
	public String getTel1() {
		return tel1;
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getTel3() {
		return tel3;
	}
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	
	public String getUser_email() {
		return email_id+"@"+email_domain;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
		int idx=user_email.indexOf("@");
		email_id =user_email.substring(0,idx);
		email_domain=user_email.substring(idx+1,user_email.length());
	}
	
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getEmail_domain() {
		return email_domain;
	}
	public void setEmail_domain(String email_domain) {
		this.email_domain = email_domain;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getBirthday() {
		return year+month+day;
		
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
		String b[]=birthday.split("/");
		year = b[0];
		month = b[1];
		day = b[2];
		
	}
	
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getLog_date() {
		return log_date;
	}
	public void setLog_date(String log_date) {
		this.log_date = log_date;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAddrdetail() {
		return addrdetail;
	}
	public void setAddrdetail(String addrdetail) {
		this.addrdetail = addrdetail;
	}
	public String getLoginStatus() {
		return loginStatus;
	}
	public void setLoginStatus(String loginStatus) {
		this.loginStatus = loginStatus;
	}

}

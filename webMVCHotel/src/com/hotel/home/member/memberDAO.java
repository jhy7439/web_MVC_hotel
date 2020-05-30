package com.hotel.home.member;

import java.util.ArrayList;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.Catch;

import com.hotel.home.DBConn;

public class memberDAO extends DBConn {

	public memberDAO() {
			
	}
	
	
	public int getIdCheck(String userid){
		int result =0;
		try {
		dbConn();
			sql=" select count(userid) from member where userid=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				result= rs.getInt(1);
			}
			
		}catch(Exception e) {
			System.out.println("아이디 중복체크 오류"+e.getMessage());
		}finally {
			dbClose();
		}
		
		
		
		
		
		
		
		return result;
	}
	
	public int memberInsert(memberVO vo) {
		int result=0;
		try {
			dbConn();
						//1				2			3			4		5		6		7		8			9		10 	  11
			sql="insert into member(member_code,user_name,user_en_name,user_tel,user_email,zipcode,addr,addrdetail,user_id,user_pwd,birthday,regdate)"
				+ " values(memcode_seq.nextVal,?,?,?,?,?,?,?,?,?,?,sysdate)";
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1,vo.getUser_name());
			pstmt.setString(2,vo.getUser_en_name());
			pstmt.setString(3,vo.getUser_tel());
			pstmt.setString(4,vo.getUser_email());
			pstmt.setString(5,vo.getZipcode());
			pstmt.setString(6,vo.getAddr());
			pstmt.setString(7, vo.getAddrdetail());
			pstmt.setString(8, vo.getUser_id());
			pstmt.setString(9, vo.getUser_pwd());
			pstmt.setString(10, vo.getBirthday());
			result=pstmt.executeUpdate();
			
			
		}catch(Exception e) {
			System.out.println("회원추가 에러.."+e.getMessage());
		}finally {
			dbClose();
		}
		
		return result;
	}
	//로그인 확인
	public void memberlogin(memberVO vo) {
		
		try {
			dbConn();
			sql="select username from membership where userid=? and userpwd=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUser_id());
			pstmt.setString(2, vo.getUser_pwd());
			rs =pstmt.executeQuery();
			
			
			if(rs.next()) {
				vo.setUser_name(rs.getString(1));
				vo.setLoginStatus("Y");
			}else {
				vo.setLoginStatus("N");
			}
			
	}catch(Exception e) {
		System.out.println("로그인 에러발생."+e.getMessage());
	}finally {
		dbClose();
	}
	
	}
	public void getMember(memberVO vo) {
		try {
			dbConn();
			sql="select userid,username,tel,email,zipcode,addr,addrdetail from membership where userid=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUser_id());
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setUser_id(rs.getString(1));
				vo.setUser_name(rs.getString(2));
				vo.setUser_tel(rs.getString(3));
				vo.setUser_email(rs.getString(4));
				vo.setZipcode(rs.getString(5));
				vo.setAddr(rs.getString(6));
				vo.setAddrdetail(rs.getString(7));
				
				
			}
			
		}catch(Exception e) {
			System.out.println("회원선택에러"+e.getMessage());
		}finally {
			dbClose();
		}
	}
	public int MemberUpdate(memberVO vo) {
		int result=0;
		try {
			dbConn();
			sql="update membership set tel=?,email=?,zipcode=?,addr=?,addrdetail=? where userid=? and userpwd=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,vo.getUser_tel());
			pstmt.setString	(2,vo.getUser_email());
			pstmt.setString	(3,vo.getZipcode());
			pstmt.setString(4,vo.getAddr());
			pstmt.setString(5,vo.getAddrdetail());
			pstmt.setString(6 , vo.getUser_id());
			pstmt.setString(7 , vo.getUser_pwd());
				
				result=pstmt.executeUpdate();
			
			
		}catch(Exception e) {
			System.out.println("회원정보수정에러"+e.getMessage());
		}finally {
			dbClose();
		}
		return result;
	}
}

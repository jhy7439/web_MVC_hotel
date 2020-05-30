package com.hotel.home.member;

import java.util.ArrayList;
import java.util.List;


import com.hotel.home.DBConn;

public class memberDAO extends DBConn {

	public memberDAO() {
			
	}
	
	
	public int getIdCheck(String user_id){//���̵� �ߺ� üũ
		int result =0;
		try {
		dbConn();
			sql=" select count(user_id) from member where user_id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				result= rs.getInt(1);
			}
			
		}catch(Exception e) {
			System.out.println("���̵� �ߺ�üũ ����"+e.getMessage());
		}finally {
			dbClose();
		}
		return result;
	}
	
	public int memberInsert(memberVO vo) {//ȸ������
		int result=0;
		try {
			dbConn();
			
			sql="insert into member(member_code, user_name, user_en_name, user_tel, user_email, user_addr, user_id, user_pwd, birthday, regdate)"
				+ " values(memcode_seq.nextVal,?,?,?,?,?,?,?,?,sysdate)";
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1,vo.getUser_name());
			pstmt.setString(2,vo.getUser_en_name());

			pstmt.setString(3,vo.getUser_tel());

			pstmt.setString(4,vo.getUser_email());

			pstmt.setString(5,vo.getUser_addr());

			pstmt.setString(6,vo.getUser_id());
			pstmt.setString(7,vo.getUser_pwd());
			pstmt.setString(8,vo.getBirthday());

			result=pstmt.executeUpdate();
			
			
		}catch(Exception e) {
			System.out.println("ȸ���߰� ����.."+e.getMessage());
		}finally {
			dbClose();
		}
		
		return result;
	}
	//�α��� Ȯ��
	public void memberlogin(memberVO vo) {
		
		try {
			dbConn();
			sql="select user_name from member where user_id=? and user_pwd=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUser_id());
			pstmt.setString(2, vo.getUser_pwd());
			rs =pstmt.executeQuery();
			
			
			if(rs.next()) {
				//username
				vo.setUser_name(rs.getString(1));
				vo.setLoginStatus("Y");
			}else {
				vo.setLoginStatus("N");
			}
			
	}catch(Exception e) {
		System.out.println("�α��� �����߻�."+e.getMessage());
	}finally {
		dbClose();
	}
	
	}
	
	
	
	public void getMember(memberVO vo) {//ȸ������ ��������
		try {
			dbConn();
			sql="select member_code, user_id, user_name, user_en_name, user_tel, user_email, user_id, user_pwd, user_addr, birthday, regdate from member where user_id=?";
			
			pstmt=conn.prepareStatement(sql);
			//where�� �ִ� ?�� ��
			pstmt.setString(1, vo.getUser_id());
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setMember_code(rs.getInt(1));
				vo.setUser_id(rs.getString(2));
				vo.setUser_name(rs.getString(3));
				vo.setUser_en_name(rs.getString(4));
				vo.setUser_tel(rs.getString(5));
				vo.setUser_email(rs.getString(6));
				vo.setUser_id(rs.getString(7));
				vo.setUser_pwd(rs.getString(8));
				vo.setUser_addr(rs.getString(9));
				vo.setUser_addr(rs.getString(10));
				vo.setBirthday(rs.getString(11));
				vo.setRegdate(rs.getString(12));
			}
		}catch(Exception e) {
			System.out.println("ȸ�����ÿ���"+e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
	}
	
	public int MemberUpdate(memberVO vo) {//ȸ������ ����
		int result=0;
		try {
			dbConn();
			sql="update member set user_name=?, user_tel=?, user_email=? where user_id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,vo.getUser_name());
			pstmt.setString(2,vo.getUser_tel());
			pstmt.setString(3,vo.getUser_email());
			pstmt.setString(4,vo.getUser_id());
			
			//System.out.println(vo.getUser_name());
		//	System.out.println(vo.getUser_tel());
			//System.out.println(vo.getUser_id());
			//System.out.println(vo.getUser_email());
			
			
				result=pstmt.executeUpdate();
				
				
				
				
		}catch(Exception e) {
			System.out.println("ȸ��������������"+e.getMessage());
		}finally {
			dbClose();
		}
		return result;
	}
	
	//���������� ��й�ȣ ����
		public int MypageMemberUpdate(memberVO vo) {
			int result=0;
			try {
				dbConn();
				sql="update member set  user_pwd=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1,vo.getUser_pwd());
					
					result=pstmt.executeUpdate();
				
				
			}catch(Exception e) {
				System.out.println("ȸ��������������pwd"+e.getMessage());
			}finally {
				dbClose();
			}
			return result;
		}
		//���� ��й�ȣ Ȯ��
		public void nowpwd(memberVO vo) {
			
			try {
				dbConn();
				sql="select user_pwd from member where user_pwd=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, vo.getUser_pwd());
				rs =pstmt.executeQuery();
				
				
				if(rs.next()) {
					
					vo.setUser_pwd(rs.getString(1));
					vo.setPwdStatus("Y");
				}else {
					vo.setPwdStatus("N");
				}
				
		}catch(Exception e) {
			System.out.println("�α��� �����߻�."+e.getMessage());
		}finally {
			dbClose();
		}
		
		}

}

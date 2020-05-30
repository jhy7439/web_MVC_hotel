package com.hotel.home.admin;

import java.util.ArrayList;
import java.util.List;

import com.hotel.home.DBConn;

public class RTypeDAO extends DBConn implements RTypeDAOService {

	public RTypeDAO() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public int typeInsert(RTypeVO vo) {
		int result=0;
		try {
			dbConn();
			System.out.println("룸타입 : " +vo.getRoom_type());
			System.out.println("설명 : " +vo.getDsp());
			System.out.println("이미지이름 : " +vo.getImg());
			sql="insert into room_type(room_type_code, "
					+ " room_type, dsp, img) "
				+ " values(rType_sq.nextval, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getRoom_type());
			pstmt.setString(2, vo.getDsp());
			pstmt.setString(3, vo.getImg());
			
			result = pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return result;
	}

	@Override
	public List<RTypeVO> typeList() {
		List<RTypeVO> lst = new ArrayList<RTypeVO>();
		try {
			dbConn();
			sql = "select room_type_code, room_type, nvl(dsp,'null%!null%!null%!null%!null%!null%!null%!null%!null%!null%!null%!null%!null%!null%!null%!null'), "
					+ "nvl(img,'no_img.png') "
				+ " from room_type order by room_type_code desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				RTypeVO vo = new RTypeVO();
				System.out.println("DAO list로 불러오기 = "+rs.getString(3));
				vo.setRoom_type_code(rs.getInt(1));
				vo.setRoom_type(rs.getString(2));
				vo.setDsp(rs.getString(3));
				vo.setImg(rs.getString(4));
				
				System.out.println("DAO list(룸코드)= "+rs.getInt(1));
				System.out.println("DAO list(룸타입)= "+rs.getString(2));
				System.out.println("DAO list(룸 설명)= "+rs.getString(3));
				System.out.println("DAO list(이미지)= "+rs.getString(4));
				lst.add(vo);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return lst;
	}

	@Override
	public void typeSelect(RTypeVO vo) {
		try {
			dbConn();
			sql="select room_type_code, room_type, nvl(dsp,'null%!null%!null%!null%!null%!null%!null%!null%!null%!null%!null%!null%!null%!null%!null%!null'),"
					+ " img "
				+ " from room_type where room_type_code=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getRoom_type_code());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setRoom_type_code(rs.getInt(1));
				vo.setRoom_type(rs.getString(2));
				vo.setDsp(rs.getString(3));
				if(rs.getString(4)==null) {
					System.out.println("이미지 이름 null");
				}
				if(rs.getString(4)!=null) {
					vo.setImg(rs.getString(4));
				}
				
			}
					
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
	}

	@Override
	public int typeUpdate(RTypeVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int typeDelete(RTypeVO vo) {
		int result = 0;
		try {
			dbConn();
			//삭제 전 이미지 파일명 구하기
			sql = "select img from room_type where room_type_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getRoom_type_code());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1)!=null) {
					vo.setImg(rs.getString(1));
				}
				
				
				//레코드 삭제하기 
				sql = "delete from room_type where room_type_code = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, vo.getRoom_type_code());
				result = pstmt.executeUpdate();
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}

}

package com.hotel.home.admin;

import java.util.List;

import com.hotel.home.DBConn;

public class RoomDAO extends DBConn implements RoomDAOService {

	@Override
	public List<RoomVO> roomList() {
		
		return null;
	}

	@Override
	public void roomSelect(RoomVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public int roomInsert(RoomVO vo) {
		int result = 0;
		try {
			dbConn();
			sql="insert into rooms(room_code, bed_code, room_type_code, room_num, room_status, room_name,"
					+ " max_adult, max_child) values(room_sq.nextval, ?, ? ,? ,? , ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getBed_code());
			pstmt.setInt(2, vo.getRoom_type_code());
			pstmt.setString(3, vo.getRoom_num());
			pstmt.setString(4, vo.getRoom_status());
			pstmt.setString(5, vo.getRoom_name());
			pstmt.setInt(6, vo.getMax_adult());
			pstmt.setInt(7, vo.getMax_child());
			
			result = pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("객실등록 에러 : "+ e.getMessage());
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}

	@Override
	public int roomUpdate(RoomVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int roomDelete(int no) {
		// TODO Auto-generated method stub
		return 0;
	}

}

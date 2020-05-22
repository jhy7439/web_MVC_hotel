package com.hotel.home.admin;

import java.util.ArrayList;
import java.util.List;

import com.hotel.home.DBConn;

public class BedDAO extends DBConn implements BedDAOService {

	public BedDAO() {
		
	}
	@Override
	public List<BedVO> bedList() {
		List<BedVO> lst = new ArrayList<BedVO>();
		
		try {
			dbConn();
			sql = "select bed_code, bed_type, bed_rate "
					+ " from bed order by bed_code desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				
				BedVO bVo = new BedVO();
				
				bVo.setBed_code(rs.getInt(1));
				bVo.setBed_type(rs.getString(2));
				bVo.setBed_rate(rs.getInt(3));
				lst.add(bVo);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return lst;
	}
	
	@Override
	public void bedSelect(BedVO vo) {
		try {
			dbConn();
			sql = "select bed_code, bed_type, bed_rate from bed where bed_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getBed_code());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setBed_code(rs.getInt(1));
				vo.setBed_type(rs.getString(2));
				vo.setBed_rate(rs.getInt(3));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
	}
	
	@Override
	public int bedInsert(BedVO vo) {
		int result=0;
		try {
			dbConn();
			sql = "insert into bed(bed_code, bed_type, bed_rate) "
					+ " values(bed_sq.nextval, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getBed_type());
			pstmt.setInt(2, vo.getBed_rate());
			
			result = pstmt.executeUpdate();
			
		}catch (Exception e) {
			System.out.println("침대 등록 에러");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}

	@Override
	public int bedUpdate(BedVO vo) {
		int result = 0;
		
		try {
			dbConn();
			sql= "update bed set bed_type=?, bed_rate=? where bed_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getBed_type());
			pstmt.setInt(2, vo.getBed_rate());
			pstmt.setInt(3, vo.getBed_code());
			
			result = pstmt.executeUpdate();
		
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return result;
	}
	
	

	@Override
	public int bedDelete(int no) {
		int result = 0;
		try {
			dbConn();
			sql = "delete from bed where bed_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			result = pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}
	
}

package com.hotel.home.admin;

import java.util.ArrayList;
import java.util.List;

import com.hotel.home.DBConn;

public class EventsDAO extends DBConn implements EventsDAOService {
	
	public EventsDAO() {
		
	}
	
	@Override
	public List<EventsVO> EventAllRecord(PagingVO pageVO) {
		//레코드 1페이지 선택
		List<EventsVO> list = new ArrayList<EventsVO>();
		try {
			dbConn();
			sql = "select * from (select * from (select room_event_code, room_event_name, event_type, event_img, dsp, sub_dsp, action, to_char(event_start_date, 'yy.mm.dd')event_start_date, to_char(event_end_date, 'yy.mm.dd')event_end_date from event order by room_event_code desc)"
				  + "where rownum<=? order by room_event_code desc)"
				  + "where rownum<=? order by room_event_code asc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pageVO.getPageNum()*pageVO.getOnePageRecord()); //한페이지(pageNum) *한페이지 출력할 레코드수(onePageRecord)
			pstmt.setInt(2, pageVO.getOnePageRecord());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				EventsVO vo = new EventsVO();
				vo.setRoom_event_code(rs.getInt(1));
				vo.setRoom_event_name(rs.getString(2));
				vo.setEvent_type(rs.getString(3));
				vo.setEvent_img(rs.getString(4));
				vo.setDsp(rs.getString(5));
				vo.setSub_dsp(rs.getString(6));
				vo.setAction(rs.getString(7));
				vo.setEvent_start_date(rs.getString(8));
				vo.setEvent_end_date(rs.getString(9));

				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return list;
	}
	@Override
	public void EventSelect(EventsVO vo) {
		try {
			dbConn();
			sql = "select room_event_code, room_event_name, event_type, event_img, dsp, sub_dsp, action, to_char(event_start_date, 'yy.mm.dd')event_start_date, to_char(event_end_date, 'yy.mm.dd')event_end_date from event where room_event_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getRoom_event_code());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setRoom_event_code(rs.getInt(1));
				vo.setRoom_event_name(rs.getString(2));
				vo.setEvent_type(rs.getString(3));
				vo.setEvent_img(rs.getString(4));
				vo.setDsp(rs.getString(5));
				vo.setSub_dsp(rs.getString(6));
				vo.setAction(rs.getString(7));
				vo.setEvent_start_date(rs.getString(8));
				vo.setEvent_end_date(rs.getString(9));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
	}

	@Override
	public int EventInsert(EventsVO vo) {
		int result=0;
		try {
			dbConn();
			String sql="insert into event(room_event_code, room_event_name, event_type, event_img, dsp, sub_dsp, action, event_start_date, event_end_date) values(event_sq.nextVal, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getRoom_event_name());
			pstmt.setString(2, vo.getEvent_type());
			pstmt.setString(3, vo.getEvent_img());
			pstmt.setString(4, vo.getDsp());
			pstmt.setString(5, vo.getSub_dsp());
			pstmt.setString(6, vo.getAction());
			pstmt.setString(7, vo.getEvent_start_date());
			pstmt.setString(8, vo.getEvent_end_date());
			
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}

	@Override
	public int EventUpdate(EventsVO vo) {
		int result = 0;
		
		try {
			dbConn();
			sql="update event set room_event_name=?, event_type=?, event_img=?, dsp=?, sub_dsp=?, action=?, event_start_date=?, event_end_date=? where room_event_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getRoom_event_name());
			pstmt.setString(2, vo.getEvent_type());
			pstmt.setString(3, vo.getEvent_img());
			pstmt.setString(4, vo.getDsp());
			pstmt.setString(5, vo.getSub_dsp());
			pstmt.setString(6, vo.getEvent_start_date());
			pstmt.setString(7, vo.getRoom_event_name());
			
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}

	@Override
	public int EventDelete(EventsVO vo) {
		int result = 0;
		try {
			dbConn();
			sql = "select event_img from event where room_event_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getRoom_event_code());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setEvent_img(rs.getString(1));
			}

			sql = "delete from event where room_event_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getRoom_event_code());
			
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}
	//총 레코드 수
	public int getTotalRecord() {
		int totalRecord=0;
		try {
			dbConn();
			sql = "select count(room_event_code) from event";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				totalRecord = rs.getInt(1);
			}
		}catch(Exception e) {
			System.out.println("총 레코드 수 구하기 에러"+e.getMessage());
		}finally {
			dbClose();
		}
		return totalRecord;
	}
	

}

package com.hotel.board;

import java.util.ArrayList;
import java.util.List;

import com.hotel.board.PagingVO;
import com.hotel.home.DBConn;

public class boardDAO extends DBConn implements boardDAOService {

	public boardDAO() {
		
	}
	
	@Override
	public List<boardVO> boardAllRecord(PagingVO pageVO) {
		//레코드 1페이지 선택
		List<boardVO> list = new ArrayList<boardVO>();
		try {
			dbConn();
			sql = " select *from "
					+ " (select * from "
					+ " (select no,subject,name,publicPrivate, to_char(writeDate, 'mm-dd hh:mi') writeDate "
					+ " from question ";
			//검색어가 있을떄
			if(pageVO.getSearchKey()!=null && pageVO.getSearchWord()!=null) {
				sql +=" where "+pageVO.getSearchKey()+" like '%"+pageVO.getSearchWord()+"%' ";
			}
			sql +="order by no desc) "
				+ " where rownum<=? order by no asc) "
				+ " where rownum<=? order by no desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pageVO.getPageNum()*pageVO.getOnePageRecord());
			if(pageVO.getPageNum()==pageVO.getTotalPage()) {
				pstmt.setInt(2, pageVO.getLastPageRecord());
			}else {
				pstmt.setInt(2, pageVO.getOnePageCount());
			}
			rs= pstmt.executeQuery();
			while(rs.next()) {
				boardVO vo = new boardVO();
				vo.setNo(rs.getInt(1));
				vo.setSubject(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setPublicPrivate(rs.getString(4));
				vo.setWriteDate(rs.getString(5));
				list.add(vo);
			}
			
		}catch(Exception e) {
			System.out.println("문의내역 리스트 선택에러-->"+e.getMessage());
		}finally {
			dbClose();
		}
		return list;
	}

	@Override
	public void boardSelect(boardVO vo) {
		//선택
		try {
			dbConn();
			sql = "select no, questionType, subject, content, name, tel,writeDate,publicPrivate from question where no=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getNo());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setQuestionType(rs.getString(2));
				vo.setSubject(rs.getString(3));
				vo.setContent(rs.getString(4));
				vo.setName(rs.getString(5));
				vo.setTel(rs.getString(6));
				vo.setWriteDate(rs.getString(7));
				vo.setPublicPrivate(rs.getString(8));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
	}

	@Override
	public int boardInsert(boardVO vo) {
		int result =0;
		try {
			dbConn();
			String sql ="insert into question(no,subject,content,name,tel,questionType,publicPrivate,writeDate) "
						+ "values(e_sq.nextval,?,?,?,?,?,?,sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getSubject());
			pstmt.setString(2, vo.getContent());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getTel());
			pstmt.setString(5, vo.getQuestionType());
			pstmt.setString(6, vo.getPublicPrivate());
		
		
			
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("문의내역 등록에러");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}

	@Override
	public int boardUpdate(boardVO vo) {
		int result =0;
		try {
			dbConn();
			sql = "update question set subject=?, content=?,name=? where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getSubject());
			pstmt.setString(2, vo.getContent());
			pstmt.setString(3, vo.getName());
			pstmt.setInt(4, vo.getNo());
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return result;
	}

	@Override
	public int boardDelete(int no) {
		int result=0;
		try {
			dbConn();
			sql = "delete from question where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return result;
	}
	
	
	//총레코드 수
		public int getTotalRecord(PagingVO pageVO) {
			int totalRecord=0;
			try {
				dbConn();
				sql ="select count(no) from question ";
				
				if(pageVO.getSearchKey()!=null && pageVO.getSearchWord()!=null) {
					sql += " where "+pageVO.getSearchKey()+" like '%"+pageVO.getSearchWord()+"%'";
				}
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					totalRecord = rs.getInt(1);
				}
				System.out.println(sql+"-->"+totalRecord);
			}catch(Exception e) {
				System.out.println("총레코드수 구하기 에러");
				e.printStackTrace();
			}finally {
				dbClose();
			}
			return totalRecord;
		}
		
		//이전글,다음글
		public LeadLagVO getLeadLagSelect(int no, PagingVO pVo) {
			LeadLagVO vo = new LeadLagVO();
			try {
				dbConn();
				sql = "select * from("
						+ " select no, lead(no,1) over(order by no desc) leadNo,"
						+ " lead(subject,1,'이전글') over(order by no desc) leadSubject,"
						+ " lag(no,1) over(order by no desc) lagNo,"
						+ " lag(subject, 1, '다음글') over(order by no desc) lagSubject from question ";
					if(pVo.getSearchKey() !=null && pVo.getSearchWord() !=null) {
						sql +=" where "+pVo.getSearchKey() + " like ?";
					}
						sql += " ) where no=?";
					pstmt = conn.prepareStatement(sql);
					if(pVo.getSearchKey() !=null && pVo.getSearchWord()!=null) {//검색어가 존재할떄
						pstmt.setString(1, "%"+pVo.getSearchWord()+"%");
						pstmt.setInt(2, no);
					}else {//검색어가 존재하지 않을떄
						pstmt.setInt(1, no);
					}
					rs= pstmt.executeQuery();
					if(rs.next()) {
						vo.setLagNo(rs.getInt(2));
						vo.setLagSubject(rs.getString(3));
						vo.setLeadNo(rs.getInt(4));
						vo.setLeadSubject(rs.getString(5));
					}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				dbClose();
			}
			return vo;
		}
}

package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.dto.AttachDTO;
import model.util.DBUtil;

public class AttachDAO {
	
		private AttachDAO() {}
		
		private static AttachDAO instance = new AttachDAO();
		
		static public AttachDAO getInstance() {
			return instance;
		}
	
		public static boolean addAttach(AttachDTO attach) throws SQLException{
			Connection con = null;
			PreparedStatement pstmt = null;
			try{
				con = DBUtil.getConnection();
				pstmt = con.prepareStatement("insert into attach values(?, ?, ?)");
				pstmt.setString(1, attach.getId());
				pstmt.setString(2, attach.getQuestion());
				pstmt.setInt(3, attach.getAnswer());
			
					
				int result = pstmt.executeUpdate();
			
				if(result == 1){
					return true;
				}
			}finally{
				DBUtil.close(con, pstmt);
			}
			return false;
		}
	
		//수정  
		public static boolean updateattach(String id, String answer) throws SQLException{
			Connection con = null;
			PreparedStatement pstmt = null;
			try{
				con = DBUtil.getConnection();
				
				pstmt = con.prepareStatement("update attach set answer=? where id=?");
				pstmt.setString(1, answer);
				pstmt.setString(2, id);
				
				int result = pstmt.executeUpdate();
				if(result == 1){
					return true;
				}
			}finally{
				DBUtil.close(con, pstmt);
			}
			return false;
		}

	
		//??? 삭제
		//sql - delete from attach where attach_id=?
		public static boolean deleteattach(String id) throws SQLException{
			Connection con = null;
			PreparedStatement pstmt = null;
			try{
				con = DBUtil.getConnection();
				pstmt = con.prepareStatement("delete from attach where id=?");
				pstmt.setString(1, id);
				int result = pstmt.executeUpdate();
				if(result == 1){
					return true;
				}
			}finally{
				DBUtil.close(con, pstmt);
			}
			return false;
		}
	
		//id로 해당 회원의 모든 정보 반환
		public static AttachDTO getattach(String id) throws SQLException{
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			AttachDTO attach = null;
			
			try{
				con = DBUtil.getConnection();
				pstmt = con.prepareStatement("select * from attach where id=?");
				pstmt.setString(1, id);
				rset = pstmt.executeQuery();
				if(rset.next()){
					attach = new AttachDTO(rset.getString(1), rset.getString(2), rset.getInt(3));
				}
			}finally{
				DBUtil.close(con, pstmt, rset);
			}
			return attach;
		}

		//모든 회원 검색해서 반환
		//sql - select * from attach
		public static ArrayList<AttachDTO> getAllattachs() throws SQLException{
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			ArrayList<AttachDTO> list = null;
			try{
				con = DBUtil.getConnection();
				pstmt = con.prepareStatement("select * from attach");
				rset = pstmt.executeQuery();
				
				list = new ArrayList<AttachDTO>();
				while(rset.next()){
					list.add(new AttachDTO(rset.getString(1), rset.getString(2), rset.getInt(3)) );
				}
			}finally{
				DBUtil.close(con, pstmt, rset);
			}
			return list;
		}
		
		// 로그인시 아이디, 비밀번호 체크 메서드
	    // 아이디, 비밀번호를 인자로 받는다.
	    public int loginCheck(String id, String pw){
	    	int result = -1;
	    	String sql = "select pw from attach where id=?";
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rset = null;
	        try {
	        	conn = DBUtil.getConnection();
	        	pstmt = conn.prepareStatement(sql);
	        	pstmt.setString(1, id);
	        	
	        	rset = pstmt.executeQuery();
	        	if(rset.next()) {
	        		if(rset.getString("pw") != null && rset.getString("pw").equals(pw)) {
	        			result = 1;
	        		}else {
	        			result = 0;
	        		}
	        	}else {
	        		result = -1;
	        	}
	        }catch(Exception e) {
	        	
	        }finally {
	        	try {
	        		if(rset != null) rset.close();
	        		if(pstmt != null) pstmt.close();
	        		if(conn != null) conn.close();
	        	}catch(Exception e) {
	        		e.printStackTrace();
	        	}
	        }
	        return result;
	       
	    } 
	    
	  //id로 해당 회원의 모든 애착유형 정답 정보 반환
	  		public static AttachDTO getAttach(String id) throws SQLException{
	  			Connection con = null;
	  			PreparedStatement pstmt = null;
	  			ResultSet rset = null;
	  			AttachDTO Attach = null;
	  			
	  			try{
	  				con = DBUtil.getConnection();
	  				pstmt = con.prepareStatement("select * from attachanswer where id=?");
	  				pstmt.setString(1, id);
	  				rset = pstmt.executeQuery();
	  				if(rset.next()){
	  					Attach = new AttachDTO(rset.getString(1), rset.getString(2), rset.getInt(3));
	  				}
	  			}finally{
	  				DBUtil.close(con, pstmt, rset);
	  			}
	  			return Attach;
	  		}	    

}

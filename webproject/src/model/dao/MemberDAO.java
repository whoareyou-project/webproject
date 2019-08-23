package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.dto.MemberDTO;
import model.util.DBUtil;

public class MemberDAO {
	
		public static boolean addMember(MemberDTO member) throws SQLException{
			Connection con = null;
			PreparedStatement pstmt = null;
			try{
				con = DBUtil.getConnection();
				pstmt = con.prepareStatement("insert into member values(?, ?, ?, ?, ?, ?, ?, ?, ?)");
				pstmt.setString(1, member.getId());
				pstmt.setString(2, member.getPw());
				pstmt.setString(3, member.getName());
				pstmt.setString(4, member.getAge());
				pstmt.setString(5, member.getSex());
				pstmt.setString(6, member.getBirthday());
				pstmt.setString(7, member.getAddress());
				pstmt.setString(8, member.getJob());
				pstmt.setString(9, member.getHeight());
					
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
		public static boolean updateMember(String id, String job) throws SQLException{
			Connection con = null;
			PreparedStatement pstmt = null;
			try{
				con = DBUtil.getConnection();
				
				pstmt = con.prepareStatement("update Member set job=? where id=?");
				pstmt.setString(1, job);
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
		//sql - delete from Member where Member_id=?
		public static boolean deleteMember(String id) throws SQLException{
			Connection con = null;
			PreparedStatement pstmt = null;
			try{
				con = DBUtil.getConnection();
				pstmt = con.prepareStatement("delete from Member where id=?");
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
		public static MemberDTO getMember(String id) throws SQLException{
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			MemberDTO Member = null;
			
			try{
				con = DBUtil.getConnection();
				pstmt = con.prepareStatement("select * from Member where id=?");
				pstmt.setString(1, id);
				rset = pstmt.executeQuery();
				if(rset.next()){
					Member = new MemberDTO(rset.getString(1), rset.getString(2), rset.getString(3), rset.getString(4), rset.getString(5), rset.getString(6), rset.getString(7), rset.getString(8), rset.getString(9));
				}
			}finally{
				DBUtil.close(con, pstmt, rset);
			}
			return Member;
		}

		//모든 회원 검색해서 반환
		//sql - select * from Member
		public static ArrayList<MemberDTO> getAllMembers() throws SQLException{
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			ArrayList<MemberDTO> list = null;
			try{
				con = DBUtil.getConnection();
				pstmt = con.prepareStatement("select * from Member");
				rset = pstmt.executeQuery();
				
				list = new ArrayList<MemberDTO>();
				while(rset.next()){
					list.add(new MemberDTO(rset.getString(1), rset.getString(2), rset.getString(3), rset.getString(4), rset.getString(5), rset.getString(6), rset.getString(7), rset.getString(8), rset.getString(9)) );
				}
			}finally{
				DBUtil.close(con, pstmt, rset);
			}
			return list;
		}
		
		// 로그인시 아이디, 비밀번호 체크 메서드
	    // 아이디, 비밀번호를 인자로 받는다.
	    public int loginCheck(String id, String pw) 
	    {
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	 
	        String dbPW = ""; // db에서 꺼낸 비밀번호를 담을 변수
	        int x = -1;
	 
	        try {
	            // 쿼리 - 먼저 입력된 아이디로 DB에서 비밀번호를 조회한다.
	            StringBuffer query = new StringBuffer();
	            query.append("SELECT PW FROM MEMBER WHERE ID=?");
	 
	            conn = DBUtil.getConnection();
	            pstmt = conn.prepareStatement(query.toString());
	            pstmt.setString(1, id);
	            rs = pstmt.executeQuery();
	 
	            if (rs.next()) // 입려된 아이디에 해당하는 비번 있을경우
	            {
	                dbPW = rs.getString("pw"); // 비번을 변수에 넣는다.
	 
	                if (dbPW.equals(pw)) 
	                    x = 1; // 넘겨받은 비번과 꺼내온 배번 비교. 같으면 인증성공
	                else                  
	                    x = 0; // DB의 비밀번호와 입력받은 비밀번호 다름, 인증실패
	                
	            } else {
	                x = -1; // 해당 아이디가 없을 경우
	            }
	 
	            return x;
	 
	        } catch (Exception sqle) {
	            throw new RuntimeException(sqle.getMessage());
	        } finally {
	            try{
	                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
	                if ( conn != null ){ conn.close(); conn=null;    }
	            }catch(Exception e){
	                throw new RuntimeException(e.getMessage());
	            }
	        }
	    } // end loginCheck()


}

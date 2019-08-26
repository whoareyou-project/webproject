package controller;

import java.io.IOException;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exception.MessageException;
import model.dao.MemberDAO;
import model.dao.service;
import model.dto.MemberDTO;

@WebServlet("/control")
public class Controller extends HttpServlet {
    public Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//command pattern
		String command = request.getParameter("command");
		try{
			if(command.equals("memberAll")){//모든 회원 검색
				memberAll(request, response);
			}else if(command.equals("member")){//특정 회원 정보 검색
				member(request, response);
			}else if(command.equals("memberInsert")){//회원 추가 등록
				memberInsert(request, response);
			}else if(command.equals("memberUpdateReq")){//회원 정보 수정요청
				memberUpdateReq(request, response);
			}else if(command.equals("memberUpdate")){//회원 정보 수정
				memberUpdate(request, response);
			}else if(command.equals("memberDelete")){//회원 탈퇴[삭제]
				memberDelete(request, response);
			}
		}catch(Exception s){
			request.setAttribute("errorMsg", s.getMessage());
			request.getRequestDispatcher("showError.jsp").forward(request, response);
			s.printStackTrace();
		}
	}
	

//	//모두 ProbonoProject 검색 메소드
//	public void probonoProjectAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String url = "showError.jsp";
//		try {
//			request.setAttribute("probonoProjectAll", service.getAllProbonoProjects());
//			url = "probonoProjectList.jsp";
//		}catch(Exception s){
//			s.printStackTrace();
//			request.setAttribute("errorMsg", s.getMessage());
//		}
//		request.getRequestDispatcher(url).forward(request, response);
//	}
//	
	//???
	//모든 회원 검색 - 검색된 데이터 출력 화면[memberList.jsp]
	public void memberAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "showError.jsp";
		try {
			request.setAttribute("memberAll", service.getAllMembers());
			url = "memberList.jsp";
		}catch(Exception s){
			s.printStackTrace();
			request.setAttribute("errorMsg", s.getMessage());
		}
		request.getRequestDispatcher(url).forward(request, response);
	
	}
	
	//회원 검색 
	public void member(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "showError.jsp";
		try {
			request.setAttribute("member", service.getMember(request.getParameter("memberId")));
			url = "memberDetail.jsp";
		}catch(Exception s){
			s.printStackTrace();
			request.setAttribute("errorMsg", s.getMessage());
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
	

	//회원 가입 메소드
	protected void memberInsert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "showError.jsp";
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String sex = request.getParameter("sex");
		String birthday = request.getParameter("birthday");
		String address = request.getParameter("address");
		String job = request.getParameter("job");
		String height = request.getParameter("height");
		
		MemberDTO member = new MemberDTO(id, pw, name, age, sex, birthday, address, job, height);
		try{
			boolean result = service.addMember(member);
			if(result){
				request.setAttribute("member", member);
				request.setAttribute("successMsg", "가입 완료");
				url = "memberDetail.jsp";
			}else{
				request.setAttribute("errorMsg", "다시 시도하세요");
			}
		}catch(Exception s){
			s.printStackTrace();
			request.setAttribute("errorMsg", s.getMessage());
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
	
	//회원 수정 요구
	public void memberUpdateReq(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "showError.jsp";
		try {
			request.setAttribute("member", service.getMember(request.getParameter("memberId")));
			url = "memberUpdate.jsp";
		}catch(Exception s){
			s.printStackTrace();
			request.setAttribute("errorMsg", s.getMessage());
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	//회원 수정 
	public void memberUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String memberId = request.getParameter("memberId");		
		String major=request.getParameter("major");				
		if(memberId == null || memberId.trim().length() == 0 ||
		   major == null || major.trim().length() == 0 ){
		response.sendRedirect("memberDetail.jsp");
		return;
		}
		boolean result = false;
	
		try {
			result = service.updateMember(memberId, major);
			request.setAttribute("member", service.getMember(memberId));
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "게시글 수정 실패");
		}
		if(result){
			
			request.setAttribute("successMsg", "수정 완료");
			request.getRequestDispatcher("memberDetail.jsp").forward(request, response);
			return;
		}
		request.getRequestDispatcher("error.jsp").forward(request, response);
	}
	
	//???
	//회원 삭제
	public void memberDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberId = request.getParameter("memberId");					
		if(memberId == null || memberId.trim().length() == 0){
		response.sendRedirect("memberDetail.jsp");
		return;
		}
		boolean result = false;
	
		try {
			result = service.deleteMember(memberId);
			request.setAttribute("member", service.getMember(memberId));
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "게시글 삭제 실패");
		}
		if(result){
			
			request.setAttribute("successMsg", "삭제 완료");
			request.getRequestDispatcher("memberDetail.jsp").forward(request, response);
			return;
		}
		request.getRequestDispatcher("error.jsp").forward(request, response);
	}

}

	
//protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	String id = request.getParameter("id");
//	String pw = request.getParameter("pw");
//	String name = request.getParameter("name");
//	String age = request.getParameter("age");
//	String sex = request.getParameter("sex");
//	String birthday = request.getParameter("birthday");
//	String address = request.getParameter("address");
//	String job = request.getParameter("job");
//	String height = request.getParameter("height");
//
//	MemberDTO Member = new MemberDTO(id,pw,name,age,sex,birthday,address,job,height);
//	
//	boolean result = service.add(Member);
//	
//	if(result) {
//		request.getRequestDispatcher("success").forward(request, response);
//	}else {
//		response.sendRedirect("fail");
//	}
//}
//
//}

package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.service;
import model.dto.AttachDTO;
import model.dto.MemberDTO;
import model.dto.modiDTO;

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
			}else if(command.equals("attachInsert")){//애착유형 정답 등록
				attachInsert(request, response);	
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
		HttpSession session = request.getSession();
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
			HttpSession session = request.getSession();
			request.setAttribute("member", service.getMember((String) session.getAttribute("id")));
			url = "information.jsp";
			
		}catch(Exception s){
			s.printStackTrace();
			request.setAttribute("errorMsg", s.getMessage());
			System.out.println("----123------");
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
				url = "joinsuccess.jsp";
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
			HttpSession session = request.getSession();
			request.setAttribute("member", service.getMember((String)session.getAttribute("id")));
			url = "updatejoin.jsp";
		}catch(Exception s){
			s.printStackTrace();
			request.setAttribute("errorMsg", s.getMessage());
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	//회원 수정 
	public void memberUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String url = "showError.jsp";
		/*id pw name age sex birthday address job height*/
		String id =request.getParameter("id");
		String pw =request.getParameter("pw");
		String name =request.getParameter("name");
		String age =request.getParameter("age");
		String birthday =request.getParameter("birthday");
		String address =request.getParameter("address");
		String job =request.getParameter("job");
		String height =request.getParameter("height");
		if(pw == null || pw.trim().length() == 0 ||
		   name == null || name.trim().length() == 0 ||
		   age == null || age.trim().length() == 0 ||
		   birthday == null || birthday.trim().length() == 0 ||
		   address == null || address.trim().length() == 0 ||
		   job == null || job.trim().length() == 0 ||
		   height == null || height.trim().length() == 0 ){
				response.sendRedirect("showError.jsp");
				return;
		}
		boolean result = false;
		modiDTO member = new modiDTO(id, pw, name, age, birthday, address, job, height);
		
		try {
			result = service.updateMember(id, pw, name, age, birthday, address, job, height);
			System.out.println(result);
			
			
			if(result) {
				request.setAttribute("member", service.getMember(id));
				url = "updatejoin.jsp";
			} else {
				request.setAttribute("errorMsg", "다시 시도하세요");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("errorMsg", e.getMessage());
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}
	
	//???
	//회원 삭제
		public void memberDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String url="showError.jsp";
			String id = request.getParameter("id");					
		
		try {
			HttpSession session = request.getSession();
			boolean result = service.deleteMember(((String) session.getAttribute("id")));
			if(result){
				request.setAttribute("id", id);
				request.setAttribute("successMsg", "삭제 완료");
				url ="index2.html";
			}else {
				request.setAttribute("errorMsg", "다시시도하세요");
			}
			} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
	
	protected void attachInsert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "showError.jsp";
		
		String id = request.getParameter("id");
		String question = request.getParameter("question");
		int answer = Integer.parseInt(request.getParameter("answer"));
		
		AttachDTO attach = new AttachDTO(id, question, answer);
		try{
			boolean result = service.addAttach(attach);
			if(result){
				request.setAttribute("attach", attach);
				request.setAttribute("successMsg", "입력 완료");
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

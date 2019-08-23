package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/check")
public class IdCheck extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println(id);
		HttpSession session = request.getSession();
		System.out.println("IdCheck - " + session.getId());
		
		if (id.equals("admin") && pw.equals("1234")) {	
			session.setAttribute("id", id);
			response.sendRedirect("admin");

		} else {
			response.sendRedirect("user");
		}

	}
}

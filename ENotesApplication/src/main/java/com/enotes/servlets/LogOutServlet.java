package com.enotes.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogOutServlet")
public class LogOutServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	try {
	HttpSession session1=req.getSession();
	session1.removeAttribute("userDetails");
	
	HttpSession session2=req.getSession();
	session2.setAttribute("logout-msg", "Log Out Successfully!!");
	resp.sendRedirect("login.jsp");
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	}

}

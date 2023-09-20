package com.enotes.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.enotes.dao.UserDao;
import com.enotes.db.ConnectionProvider;
import com.enotes.user.UserDetails;

@WebServlet("/profile")
public class LogInServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		String id = req.getParameter("user_id");
		String password = req.getParameter("user_password");

		UserDetails user = new UserDetails(id, password);

		UserDao ud = new UserDao(ConnectionProvider.getConnection());
		UserDetails us = ud.loginUser(user);
		if (us != null) {
			HttpSession session = req.getSession();
			session.setAttribute("userDetails", us);
			resp.sendRedirect("profile.jsp");
		} else {
			HttpSession session = req.getSession();
			session.setAttribute("login-failed", "Invalid UserId and Password");
			resp.sendRedirect("login.jsp");
		}
	}

}

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

@WebServlet("/register")
public class UserServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
		String id = req.getParameter("user_id");
		String name = req.getParameter("user_name");
		String department = req.getParameter("user_dept");
		String gender = req.getParameter("gender");
		String address = req.getParameter("user_address");
		String email = req.getParameter("user_email");
		String dob = req.getParameter("user_dob");
		String password = req.getParameter("user_password");
		String picture = req.getParameter("user_pic");

		UserDetails user = new UserDetails(id, name, department, gender, address, email, dob, password, picture);

		UserDao ud = new UserDao(ConnectionProvider.getConnection());
		boolean f = ud.addUser(user);

		HttpSession session;
		if (f) {
			session = req.getSession();
			session.setAttribute("reg-success", "Registration Successfully.");
			resp.sendRedirect("register.jsp");
		} else {
			session = req.getSession();
			session.setAttribute("reg-faield", "Something Went Wrong!!.");
			resp.sendRedirect("register.jsp");
		}
	}

}

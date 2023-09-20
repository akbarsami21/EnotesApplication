package com.enotes.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.enotes.dao.PostDao;
import com.enotes.db.ConnectionProvider;

@WebServlet("/AddNotesServlet")
public class AddNotesServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int uid = Integer.parseInt(req.getParameter("uid"));
		String tittle = req.getParameter("tittle");
		String content = req.getParameter("content");

		PostDao pd = new PostDao(ConnectionProvider.getConnection());
		boolean f = pd.AddNotes(tittle, content, uid);
		if (f) {
			System.out.println("Data inserted");
			resp.sendRedirect("showNotes.jsp");
		} else {
			System.out.println("data not inserted");
		}
	}

}

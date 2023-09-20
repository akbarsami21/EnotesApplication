package com.enotes.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.enotes.dao.PostDao;
import com.enotes.db.ConnectionProvider;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	Integer noteid=Integer.parseInt(req.getParameter("note_id"));
	
	PostDao dao=new PostDao(ConnectionProvider.getConnection());
	boolean f=dao.deleteNotesById(noteid);
	HttpSession session=null;
	if(f) {
		session=req.getSession();
		session.setAttribute("update-msg", "Notes Delete Successfully!!");
	    resp.sendRedirect("showNotes.jsp");
	}else {
		session=req.getSession();
		session.setAttribute("wrong-msg", "Something Went Wrong on server!!");
	    resp.sendRedirect("showNotes.jsp");
	}
	}

}

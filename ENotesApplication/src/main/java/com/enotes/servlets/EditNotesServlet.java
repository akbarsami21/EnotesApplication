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

@WebServlet("/EditNotesServlet")
public class EditNotesServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {

			Integer noteid=Integer.parseInt(req.getParameter("noteid"));
			String tittle=req.getParameter("tittle");
			String content=req.getParameter("content");
		    
			PostDao dao=new PostDao(ConnectionProvider.getConnection());
		    boolean f=dao.postUpdate(noteid, tittle, content);
		   if(f) {
			  System.out.println("data updated successfully!!");
			  HttpSession session=req.getSession();
			  session.setAttribute("update-msg", "Notes Update Successfully.");
			  resp.sendRedirect("showNotes.jsp");
		   }else {
			   System.out.println("data not updated!!");
		   }
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

<%@page import="com.enotes.db.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.enotes.dao.PostDao"%>
<%@page import="com.enotes.user.Post"%>
<%
UserDetails user1 = (UserDetails) session.getAttribute("userDetails");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Please Log In First...");
}
%>



<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<style>
body {
	background: url("img/enotes_bg4.jpg");
	width: 100%;
	height: 95vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<meta charset="ISO-8859-1">
<title>EditNotes | Enotes</title>
<%@include file="AllContent/AllCss.jsp"%>
</head>
<body>
	<%
	Integer noteid = Integer.parseInt(request.getParameter("note_id"));
	PostDao post = new PostDao(ConnectionProvider.getConnection());
	Post p = post.getDataById(noteid);
	%>
	<%@include file="AllContent/navbar.jsp"%>

	<div class="container-fluid ">
		<h1 class="text-center mt-4"
			style="text-decoration: underline; font-weight: bold; font-style: italic;">
			Edit Your Notes</h1>
		<br>
		<div class="container ">
			<div class="row">
				<div class="col-md-12">

					<form action="EditNotesServlet" method="post">
						<input type="hidden" value="<%=noteid%>" name="noteid">
						<div class="form-group">

							<label for="exampleInputEmail1">
								<h6>Enter Tittle</h6>
							</label> <input type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="" name="tittle"
								required="required" value="<%=p.getTittle()%>">

						</div>
						<div class="form-group">
							<label for="exampleInputEmail1"><h6>Enter Content</h6></label>
							<textarea rows="9" cols="" class="form-control" name="content"
								required="required"><%=p.getContent()%></textarea>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Add Notes</button>
						</div>

					</form>

				</div>
			</div>
		</div>
	</div>
	<br>

	<%@include file="AllContent/footer.jsp"%>
</body>
</html>
<%@page import="com.enotes.db.ConnectionProvider"%>
<%@page import="com.enotes.dao.PostDao"%>
<%@page import="com.enotes.user.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
UserDetails user3 = (UserDetails) session.getAttribute("userDetails");
if (user3 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Please Log In First!!!");
}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<style>
.text-p {
	line-height: 0.3;
}

.text-success {
	color: green;
}

.text-primary {
	color: blue;
}

.p-text {
	text-align: justify;
	max-width: 1100px;
	margin: 0 auto;
}

.red-text {
	color: red;
	font-weight: bold;
}
</style>
<meta charset="ISO-8859-1">
<title>ShowNotes | Enotes</title>
<%@include file="AllContent/AllCss.jsp"%>
</head>
<body>
	<%@include file="AllContent/navbar.jsp"%>
	<%
	String updateMsg = (String) session.getAttribute("update-msg");
	if (updateMsg != null) {
	%>
	<div class="alert alert-success" role="alert"><%=updateMsg%></div>
	<%
	session.removeAttribute("update-msg");

	}
	%>

	<%
	String wrongMsg = (String) session.getAttribute("wrong-msg");
	if (wrongMsg != null) {
	%>
	<div class="alert alert-danger" role="alert"><%=wrongMsg%></div>
	<%
	session.removeAttribute("wrong-msg");

	}
	%>


	<div class="container">
		<h1 class="text-center mt-4 "
			style="text-decoration: underline; font-weight: bold; font-style: italic;">
			All Notes</h1>

		<div class="row">
			<div class="col-md-12">
				<%
				if (user3 != null) {
					PostDao ob = new PostDao(ConnectionProvider.getConnection());
					List<Post> post = ob.getData(user3.getUid());
					for (Post po : post) {
				%>

				<div class="card mt-4 ">
					<img alt="" src="img/notes.png" class="card-img-top mt-3 mx-auto"
						style="max-width: 120px;">

					<div class="card-body p-4">
						<h5 class="card-tittle"><%=po.getTittle()%></h5>
						<p class="p-text"><%=po.getContent()%></p>
						<br>

						<p class="text-p">
							<b class="text-success">Published By&nbsp;&nbsp;&nbsp;&nbsp;:
								<%=user3.getName()%></b> <b class="text-primary"></b>
						</p>

						<p class="text-p">
							<b class="text-success">Published Date: <%=DateFormat.getDateTimeInstance().format(po.getPdate())%></b>
							<b class="text-success"></b>

						</p>
						<br>
						<div class="container text-center mt-2">
							<a href="DeleteServlet?note_id=<%=po.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="editNotes.jsp?note_id=<%=po.getId()%>"
								class="btn btn-primary">Edit</a> <a
								href="download.jsp?title=<%=po.getTittle()%>&content=<%=po.getContent()%>&filename=<%=po.getTittle()%>"
								class="btn btn-primary">Download</a>

						</div>
					</div>
					<%
					}
					}
					%>



				</div>
			</div>

		</div>
	</div>

	<div class="container-fluid bg-dark text-center text-white mt-5">
		<br>
		<p>
			Note: If you encounter any issues, please feel free to contact the <a
				href="#" class="red-text">IFishTeam</a>. Designed and Developed by
			IFish Team.
		<p>
		<p>
			All Rights Reserved <a href="#" class="red-text">©ifishteam2023</a>
		<p>
			<br>
	</div>
</body>
</html>
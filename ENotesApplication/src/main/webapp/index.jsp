<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.enotes.db.*"%>
<%@page import="java.sql.*"%>

<%
UserDetails user1 = (UserDetails) session.getAttribute("userDetails");
if (user1 != null) {
	response.sendRedirect("profile.jsp");

}
%>

<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<style>
.back-img {
	background: url("img/enotes_bg5.jpg");
	width: 100%;
	height: 78vh;
	background-repeat: no-repeat;
	background-size: cover;
}

.container-fluid.back-img {
	height: 78vh;
}

.text-center {
	height: 100%;
}

.button-container {
	display: flex;
	gap: 10px;
}
</style>
<meta charset="ISO-8859-1">
<title>Enotes</title>
<%@include file="AllContent/AllCss.jsp"%>

</head>
<body>
	<%@include file="AllContent/navbar.jsp"%>

	<div class="container-fluid back-img">
		<div
			class="text-center d-flex flex-column justify-content-center align-items-center">
			<h1 class="text-dark pt-5"
				style="font-size: 65px; font-weight: bold;">
				<i class="fa fa-book" aria-hidden="true"></i> ENotes-Save Your Notes
			</h1>
			<br>
			<div class="button-container">
				<a href="login.jsp" class="btn btn-light"> <i
					class="fa fa-user-circle" aria-hidden="true"></i> Log in
				</a> <a href="register.jsp" class="btn btn-light"> <i
					class="fa fa-user-plus" aria-hidden="true"></i> Sign up
				</a>
			</div>

		</div>
	</div>

	<%@include file="AllContent/footer.jsp"%>
</body>
</html>
<%@page import="com.enotes.user.UserDetails"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<head>
<style>
.bg-custom {
	background: #01579b;
}

.navbar .nav-item .nav-link {
	font-size: 20px;
	color: white;
}

.navbar-custom .nav-item:hover .nav-link {
	background: white;
	color: black;
	border-radius: 10px;
}

.navbar-brand {
	font-size: 22px;
	color: white;
}
</style>

</head>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
	<a class="navbar-brand" href="index.jsp"><i class="fa fa-book"
		aria-hidden="true"></i> IFish</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link h"
				href="profile.jsp"><i class="fa fa-home" aria-hidden="true"></i>
					Home <span class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="addNotes.jsp"><i
					class="fa fa-plus-square" aria-hidden="true"></i> Add Notes</a></li>

			<li class="nav-item"><a class="nav-link " href="showNotes.jsp"><i
					class="fa fa-address-book-o" aria-hidden="true"></i> Show Notes</a></li>
					
		</ul>
		<%
		UserDetails user = (UserDetails) session.getAttribute("userDetails");
		if (user != null) {
		%>


		<a href="" class="btn btn-light my-2 my-sm-0 mr-2" data-toggle="modal"
			data-target="#exampleModal" type="submit"><i
			class="fa fa-user-circle" aria-hidden="true"></i> <%=user.getName()%></a>
		<br> <a href="LogOutServlet" class="btn btn-light my-2 my-sm-0"
			type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i>
			Log Out</a>


		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header text-center">
						<h5 class="modal-title " id="exampleModalLabel">Profile Info</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="container text-center">
							<img src="img/<%=user.getPicture()%>" class="img-fluid"
								style="border-radius: 50%; max-width: 150px;"><br> <br>

							<table class="table">
								<tbody>
									<tr>
										<th>ID</th>
										<td><%=user.getId()%></td>
									</tr>

									<tr>
										<th>Name</th>
										<td><%=user.getName()%></td>
									</tr>

									<tr>
										<th>Email</th>
										<td><%=user.getEmail()%></td>
									</tr>

									<tr>
										<th>Address</th>
										<td><%=user.getAddress()%></td>
									</tr>

									<tr>
										<th>Department</th>
										<td><%=user.getDepartment()%></td>
									</tr>

									<tr>
										<th>Date Of Birth</th>
										<td><%=user.getDob()%></td>
									</tr>

									<tr>
										<th>Reg-Account</th>

										<td><%=DateFormat.getDateTimeInstance().format(user.getRdate())%></td>
									</tr>
								</tbody>
							</table>
							<br>
							<div>
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<%
		} else {
		%>

		<a href="login.jsp" class="btn btn-light my-2 my-sm-0 mr-2"
			type="submit"><i class="fa fa-user-circle" aria-hidden="true"></i>
			Log in</a> <br> <a href="register.jsp"
			class="btn btn-light my-2 my-sm-0" type="submit"><i
			class="fa fa-user-plus" aria-hidden="true"></i> Sign up</a>
		<%
		}
		%>

	</div>


</nav>
<%@page import="entity.Class"%>
<%@page import="entity.Student"%>
<%@page import="database.StudentDB"%>
<%@page import="database.SubjectDB"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">CMS</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="admin">Main Admin Page</a></li>
					<%
					String id = (String) session.getAttribute("id");
					if (id != null) {
					%>
					<li class="nav-item"><a class="nav-link" href="logout">Logout</a>
					</li>
					<%
					}
					%>
				</ul>
			</div>
		</div>
	</nav>
	<h1>Students Applied</h1>
	<%
			SubjectDB subdb = new SubjectDB();
			StudentDB db = new StudentDB();
			List<Student> students = db.getAllStudents();	
	%>
	
	<div class="container">
	<table class="table">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Requested Subject</th>
			<th>Class ID</th>
			<th>Assign Class</th>
		</tr>
		<%
			for(Student st : students)
			{
		%>
			<tr>
				<td><%= st.getId() %></td>
				<td><%= st.getName() %></td>
				<td><%= st.getEmail() %></td>
				<td><%= subdb.getSubjectById(st.getReq_sub_id()) %></td>
				<td><%= st.getClass_id() %></td>
				<td><a href="assignClass.jsp?stid=<%=st.getId()%>&req_sub_id=<%=st.getReq_sub_id()%>">Assign Class</a></td>
			</tr>
			<%
			}
		%>
	</table>
	</div>
</body>
</html>
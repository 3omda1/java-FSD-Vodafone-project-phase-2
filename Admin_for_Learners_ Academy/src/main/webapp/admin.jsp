<%@page import="entity.Class"%>
<%@page import="database.TeacherDB"%>
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
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="student.jsp">Applied Students</a></li>
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="report.jsp">Current Report</a></li>
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
	<h1>Scheduled Classes</h1>
	<%
		List<Class> classes = (List<Class>)request.getAttribute("classes");
		TeacherDB teacherdb = new TeacherDB();
		SubjectDB subjectdb = new SubjectDB();
	%>
	<div class="container">
	<table class="table">
		<tr>
			<th>ID</th>
			<th>Starting_Date</th>
			<th>Ending_Date</th>
			<th>Time</th>
			<th>Subject</th>
			<th>Assign Subject</th>
			<th>Instructor</th>
			<th>Assign Instructor</th>
		</tr>
		<%
			for(Class cl : classes)
			{
		%>
			<tr>
				<td><%= cl.getId() %></td>
				<td><%= cl.getStarting_day() %></td>
				<td><%= cl.getEnding_day() %></td>
				<td><%= cl.getTime() %></td>
				<td><%= subjectdb.getSubjectById(cl.getSubid()) %></td>
				<td><a href="assignSub.jsp?cid=<%=cl.getId()%>">Assign Subject</a></td>
				<td><%= teacherdb.getTeacherById(cl.getTeachID()) %></td>
				<td><a href="assignInst.jsp?cid=<%=cl.getId()%>">Assign Instructor</a></td>
			</tr>
		<%
			}
		%>
	</table>
	</div>
</body>
</html>
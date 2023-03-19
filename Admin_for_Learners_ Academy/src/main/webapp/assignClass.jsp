<%@page import="entity.Class"%>
<%@page import="database.SubjectDB"%>
<%@page import="database.ClassDB"%>
<%@page import="database.TeacherDB"%>
<%@page import="logic.operation"%>
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
<div class="container">
		<form action="assignClass" method="get">
			<div class="row">
				<div class="col-lg-6 col-lg-offset-3">
					<div class="form-group">
						<label for="name">Choose one of the below classes to be assigned base on the class ID:</label> 
						<input type="text"class="form-control" id="teacherID" placeholder="Enter Class ID" name="cid">
					</div>
					<div align="center">
						<input type="submit" class="btn btn-primary" value="Assign"/>
					</div>
				</div>
			</div>
		</form>
	</div>
	<%
			String stid = (String) request.getParameter("stid");
			session.setAttribute("stid", stid);
			
			String rq_id = (String) request.getParameter("req_sub_id");
			operation REQ_ID = new operation();
			int req_sub_id = REQ_ID.convert(rq_id);
			System.out.println(req_sub_id);
			
			ClassDB classe = new ClassDB();
			List<Class> classes = classe.getAllClasses();
			
			TeacherDB teacherdb = new TeacherDB();
			SubjectDB subjectdb = new SubjectDB();
	%>
	
	<div class="container">
		<table class="table">
			<tr>
				<th>ID</th>
				<th>Starting_Date</th>
				<th>Ending_Date</th>
				<th>Assigned Subject</th>
				<th>Instructor</th>
			</tr>
			<%
			for(Class Clas : classes)
			{
				if(Clas.getSubid() == req_sub_id)
				{
			%>
			<tr>
				<td><%= Clas.getId() %></td>
				<td><%= Clas.getStarting_day() %></td>
				<td><%= Clas.getEnding_day() %></td>
				<td><%=subjectdb.getSubjectById(Clas.getSubid())%></td>
				<td><%= teacherdb.getTeacherById(Clas.getTeachID()) %></td>
			</tr>
			<%
			}
			}
			%>
</body>
</html>
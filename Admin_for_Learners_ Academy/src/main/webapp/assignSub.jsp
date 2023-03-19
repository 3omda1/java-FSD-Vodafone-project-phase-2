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
		<form action="assignSub" method="get">
			<div class="row">
				<div class="col-lg-6 col-lg-offset-3">
					<div class="form-group">
						<label for="name">Choose one of the below subjects to be assigned for this class based on the number:</label> 
						<input type="text"class="form-control" id="subjectID" placeholder="Enter Subject ID" name="sid">
					</div>
					<div align="center">
						<input type="submit" class="btn btn-primary" value="Assign"/>
					</div>
				</div>
			</div>
		</form>
	</div>
	<%
			String cid = (String) request.getParameter("cid");
			session.setAttribute("cid", cid);
	%>
	<div class="container">
		<table class="table">
			<tr>
				<th>ID</th>
				<th>Subject</th>
			</tr>
			<tr>
				<td>1</td>
				<td>NULL</td>
			</tr>
			<tr>
				<td>2</td>
				<td>HTML</td>
			<tr>
				<td>3</td>
				<td>CSS</td>	
			</tr>
			<tr>
				<td>4</td>
				<td>SQL</td>	
			</tr>
			<tr>
				<td>5</td>
				<td>JSP</td>	
			</tr>
			<tr>
				<td>6</td>
				<td>Java</td>	
			</tr>	
</body>
</html>
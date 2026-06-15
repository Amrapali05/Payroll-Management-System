<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, cn.payroll.model.Attendance"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attendance</title>
<link rel="stylesheet" href="../css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<%@ include file="../components/navbar.jsp"%>

	<div class="container mt-5">

		<h3>My Attendance</h3>

		
		<%
		List<Attendance> list = (List<Attendance>) request.getAttribute("attList");
		%>

		<table class="table">
			<tr>
				<th>Date</th>
				<th>Status</th>
			</tr>

			<%
			for (Attendance a : list) {
			%>

			<tr>
				<td><%=a.getDate()%></td>
				<td><%=a.getStatus()%></td>
			</tr>

			<%
			}
			%>

		</table>
		>

	</div>
</body>
</html>
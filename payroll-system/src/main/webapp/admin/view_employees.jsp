<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, cn.payroll.model.Employee"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Employee</title>
<link rel="stylesheet" href="../css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<%@ include file="../components/navbar.jsp"%>

	<div class="container mt-4">

		<h3>All Employees</h3>
		<%
		List<Employee> list = (List<Employee>) request.getAttribute("empList");
		%>

		<table class="table table-bordered">

			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Department</th>
				<th>Action</th>
			</tr>

			<%
			for (Employee e : list) {
			%>

			<tr>
				<td><%=e.getId()%></td>
				<td><%=e.getName()%></td>
				<td><%=e.getEmail()%></td>
				<td><%=e.getDepartment()%></td>

				<td><a href="update_employee.jsp?id=<%=e.getId()%>"
					class="btn btn-warning btn-sm">Edit</a> <a
					href="../DeleteEmployeeServlet?id=<%=e.getId()%>"
					class="btn btn-danger btn-sm">Delete</a></td>
			</tr>

			<%
			}
			%>

		</table>

	</div>
</body>
</html>
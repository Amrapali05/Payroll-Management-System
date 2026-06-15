<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, cn.payroll.connection.DBConnection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>
<link rel="stylesheet" href="../css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<%@ include file="../components/navbar.jsp"%>

	<div class="container mt-5">
		<div class="card p-4 shadow">

			<h3>Update Employee</h3>		

			<%
			int id = Integer.parseInt(request.getParameter("id"));
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM employees WHERE emp_id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			rs.next();
			%>

			<form action="../UpdateEmployeeServlet" method="post">

				<input type="hidden" name="id" value="<%=id%>"> <input
					class="form-control mb-2" name="name"
					value="<%=rs.getString("name")%>"> <input
					class="form-control mb-2" name="dept"
					value="<%=rs.getString("department")%>">

				<button class="btn btn-warning">Update</button>

			</form>

		</div>
	</div>
</body>
</html>
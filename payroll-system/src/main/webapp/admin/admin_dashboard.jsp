<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="../css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
	<%@ include file="../components/navbar.jsp"%>


	<div class="container mt-4">

		<h3>Admin Dashboard</h3>

		<div class="row g-4">

			<div class="col-md-3">
				<div class="card p-3 text-center dashboard-card">
					<h5>Add Employee</h5>
					<a href="add_employee.jsp" class="btn btn-primary">Open</a>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card p-3 text-center dashboard-card">
					<h5>View Employees</h5>
					<a href="view_employees.jsp" class="btn btn-success">Open</a>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card p-3 text-center dashboard-card">
					<h5>Salary</h5>
					<a href="salary.jsp" class="btn btn-warning">Open</a>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card p-3 text-center dashboard-card">
					<h5>Attendance</h5>
					<a href="attendance.jsp" class="btn btn-info">Open</a>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
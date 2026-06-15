<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Dashboard</title>
<link rel="stylesheet" href="../css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<%@ include file="../components/navbar.jsp"%>

	<div class="container mt-4">

		<h3>Employee Dashboard</h3>

		<div class="row g-4">

			<div class="col-md-4">
				<div class="card p-3 text-center">
					<h5>Profile</h5>
					<a href="view_profile.jsp" class="btn btn-primary">View</a>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card p-3 text-center">
					<h5>Salary</h5>
					<a href="view_salary.jsp" class="btn btn-success">View</a>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card p-3 text-center">
					<h5>Attendance</h5>
					<a href="view_attendance.jsp" class="btn btn-info">View</a>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
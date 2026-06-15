<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<div class="card p-4">

			<h3>Attendance</h3>

			<form>
				<input class="form-control mb-2" placeholder="Employee ID">
				<input type="date" class="form-control mb-2"> <select
					class="form-control mb-2">
					<option>Present</option>
					<option>Absent</option>
					<option>On Leave</option>
				</select>

				<button class="btn btn-primary">Submit</button>

			</form>

		</div>
	</div>
</body>
</html>
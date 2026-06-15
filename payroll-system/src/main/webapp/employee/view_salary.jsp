<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="cn.payroll.model.Salary"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Salary</title>
<link rel="stylesheet" href="../css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<%@ include file="../components/navbar.jsp"%>

	<div class="container mt-5">
		<div class="card p-4">

			<h3>My Salary</h3>

			<%
			Salary s = (Salary) request.getAttribute("salary");
			%>

			<p>
				Basic:
				<%=s.getBasic()%></p><%@ page import="cn.payroll.model.Salary"%>

			<%
			Salary s = (Salary) request.getAttribute("salary");
			%>

			<!DOCTYPE html>
			<html>
<head>
<title>Payslip</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
@media print {
	.no-print {
		display: none;
	}
}
</style>

<script>
	function printPage() {
		window.print();
	}
</script>

</head>

<body>

	<div class="container mt-5">

		<div class="card p-4 shadow">

			<h3 class="text-center">Employee Payslip</h3>

			<hr>

			<p>
				<b>Month:</b>
				<%=s.getMonth()%></p>
			<p>
				Basic: ₹<%=s.getBasic()%></p>
			<p>
				HRA: ₹<%=s.getHra()%></p>
			<p>
				Bonus: ₹<%=s.getBonus()%></p>
			<p>
				Deduction: ₹<%=s.getDeduction()%></p>

			<hr>

			<h4>
				Total Salary: ₹<%=s.getNetSalary()%></h4>

			<hr>

			<button onclick="printPage()" class="btn btn-primary no-print">🖨️
				Print</button>

		</div>

	</div>

</body>
			</html>
			<p>
				HRA:
				<%=s.getHra()%></p>
			<p>
				Bonus:
				<%=s.getBonus()%></p>
			<p>
				Net Salary:
				<%=s.getNetSalary()%></p>

		</div>
	</div>
</body>
</html>
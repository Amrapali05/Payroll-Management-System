<!DOCTYPE html>
<html>
<head>
<title>Salary</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script>
	function calculateSalary() {
		let basic = parseFloat(document.getElementById("basic").value) || 0;
		let hra = parseFloat(document.getElementById("hra").value) || 0;
		let bonus = parseFloat(document.getElementById("bonus").value) || 0;
		let deduction = parseFloat(document.getElementById("deduction").value) || 0;

		let total = basic + hra + bonus - deduction;
		document.getElementById("net").value = total;
	}
</script>

</head>

<body class="bg-light">

	<div class="container mt-5">
		<div class="card p-4 shadow">

			<h3>Salary Entry</h3>

			<form action="../SalaryServlet" method="post">

				<input name="id" class="form-control mb-2" placeholder="Employee ID">

				<input id="basic" name="basic" onkeyup="calculateSalary()"
					class="form-control mb-2" placeholder="Basic"> <input
					id="hra" name="hra" onkeyup="calculateSalary()"
					class="form-control mb-2" placeholder="HRA"> <input
					id="bonus" name="bonus" onkeyup="calculateSalary()"
					class="form-control mb-2" placeholder="Bonus"> <input
					id="deduction" name="deduction" onkeyup="calculateSalary()"
					class="form-control mb-2" placeholder="Deduction"> <input
					id="net" name="net" class="form-control mb-2"
					placeholder="Total Salary" readonly> <input name="month"
					class="form-control mb-2" placeholder="Month (April)">

				<button class="btn btn-success w-100">Save</button>

			</form>

		</div>
	</div>

</body>
</html>
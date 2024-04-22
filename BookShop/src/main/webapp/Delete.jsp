<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

.operation {
	border: 2px solid black;
	border-radius: 15px;
	width: 300px;
	padding: 10px;
	margin: 20px auto;
}

.operation form {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.operation label {
	margin-bottom: 10px;
	text-align: center;
}

.operation input[type="number"], .operation input[type="submit"] {
	padding: 5px;
	margin-bottom: 10px;
	width: 200px;
}

.operation input[type="submit"] {
	padding: 5px 10px;
	background-color: #333;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.operation input[type="submit"]:hover {
	background-color: #555;
}
</style>
</head>
<body>

	<div class="container">
		<div class="header" align="center">
			<hr>
			<h1>Dynamic Book Shop</h1>
			<hr>
		</div>
		<div class="operation">
			<form action="Delete">
				<table>
					<h3>
						<center>Delete operation</center>
					</h3>
					<tr>
						<td colspan="2"><label><center>Enter Id</center></label> <input
							type="number" name="id"></td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center;"><input
							type="submit" value="Delete "></td>
					</tr>
				</table>
			</form>

			<form action="MainPage.jsp">
				<input type="submit" value="Back">
			</form>
		</div>
</body>
</html>

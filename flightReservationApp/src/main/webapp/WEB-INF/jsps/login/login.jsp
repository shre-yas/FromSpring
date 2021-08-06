<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.button {
	border: none;
	color: black;
	padding: 10px 12px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	border-radius: 12px;
	font-size: 12px;
	margin: 4px 2px;
	cursor: pointer;
	background-color: #4CAF50;
}

.p2 {
	font-family: Arial, Helvetica, sans-serif;
}
</style>
<meta charset="ISO-8859-1">
<title>User Registration</title>
</head>
<body class="p2">
	<h1 align="center" style="color: Grey">Login here</h1>
	<hr>


	<form action="verifyLogin" method="post">
		<table align="center">

			<tr>
				<td><b>Email:</b></td>
				<td><input type="text" name="emailid" autofocus required
					placeholder="Registered Email-Id">
			</tr>

			<tr>
				<td><b>Password:</b></td>
				<td><input type="password" name="password" autofocus required
					placeholder="Enter your password">
			</tr>

			<tr>
				<td align="center"><input type=submit value=Login
					class="button">
			</tr>
		</table>
<br>
${error}
	</form>
</body>
</html>
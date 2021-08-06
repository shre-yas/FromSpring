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
	<h1 align="center" style="color: Grey">Create New Account</h1>
	<hr>


	<form action="saveReg" method="post">
		<table align="center">
			<tr>
				<td><b>First Name:</b></td>
				<td><input type="text" name="firstName" autofocus required
					placeholder="Enter your First Name" >
			</tr>

			<tr>
				<td><b>Last Name:</b></td>
				<td><input type="text" name="lastName" autofocus required
					placeholder="Enter your Last Name"></td>
			</tr>

			<tr>
				<td><b>Email:</b></td>
				<td><input type="text" name="email" autofocus required
					placeholder="@gmail,@outlook,@hotmail">
			</tr>

			<tr>
				<td><b>Password:</b></td>
				<td><input type="password" name="password" autofocus required
					placeholder="Use atleast one character">
			</tr>

			<tr>

			</tr>

			<tr>
				<td align="center"><input type=submit value=Save class="button">
			</tr>
		</table>

	</form>
</body>
</html>
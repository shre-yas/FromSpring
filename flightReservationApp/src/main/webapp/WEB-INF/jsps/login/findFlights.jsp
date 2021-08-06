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
<title>Find Flights</title>
</head>
<body class="p2">
	<h1 align="center" style="color: Grey">Find Flights here</h1>
	<hr>


	<form action="findFlights" method="post">
		<table align="center">

			<tr>
				<td><b>Departure From:</b></td>
				<td><input type="text" name="from" autofocus required
					placeholder="Bengaluru,Mumbai,Delhi..">
			</tr>

			<tr>
				<td><b>Arrival To:</b></td>
				<td><input type="text" name="to" autofocus required
					placeholder="Kolkatta,Jaipur,Hyderabad">
			</tr>
			<tr>
				<td><b>Departure Date:</b></td>
				<td><input type="text" name="departureDate" autofocus required
					placeholder=DD-MM-YYYY>
			</tr>

			<tr>
				<td align="center"><input type=submit value=Search
					class="button">
			</tr>
		</table>
<br>

	</form>
</body>
</html>
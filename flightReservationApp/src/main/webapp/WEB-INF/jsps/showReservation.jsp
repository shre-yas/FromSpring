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
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	background-color: #4CAF50;
}

.p2 {
	font-family: Arial, Helvetica, sans-serif;
}
</style>
<meta charset="ISO-8859-1">
<title>Reservation Details</title>
</head>
<body class="p2">
	<h1 align="center" style="color: Grey">Flight Details</h1>
	<hr>
	<table border="1" align="center">
		<tr>
			<td>Flight number</td>
			<td>${flight.flightNumber}</td>
		</tr>
		<tr>
			<td>Operating Airline</td>
			<td>${flight.operatingAirline}</td>
		</tr>
		<tr>
			<td>Departure City</td>
			<td>${flight.departureCity}</td>
		</tr>
		<tr>
			<td>Arrival City</td>
			<td>${flight.arrivalCity}</td>
		</tr>
		<tr>
			<td>Departure Date</td>
			<td>${flight.estimatedDepartureTime}</td>
		</tr>
	</table>

	<h1 align="center" style="color: Grey">Enter Passenger Details</h1>
	<hr>


	<form action="confirmReservation" method="post">
		<table align="center">
			<tr>
				<td><b>First Name:</b></td>
				<td><input type="text" name="firstName" autofocus required
					placeholder="First Name">
			</tr>

			<tr>
				<td><b>Middle Name:</b></td>
				<td><input type="text" name="middleName" autofocus
					placeholder="Middle Name"></td>
			</tr>
			<tr>
				<td><b>Last Name:</b></td>
				<td><input type="text" name="lastName" autofocus required
					placeholder="Last Name"></td>
			</tr>

			<tr>
				<td><b>Email Id:</b></td>
				<td><input type="text" name="email" autofocus required
					placeholder="@google">
			</tr>

			<tr>
				<td><b>Phone:</b></td>
				<td><input type="text" name="phone" autofocus required
					placeholder="Phone Number">
			</tr>

		</table>

		<table align="center">
			<h1 align="center" style="color: Grey">Enter Payment Details</h1>
			<hr>

			<tr>
				<td><b>Name on the Card:</b></td>
				<td><input type="text" name="nameOnTheCard" autofocus required
					placeholder="Card holder name">
			</tr>
			<tr>
				<td><b>Card Number </b></td>
				<td><input type="text" name="cardNumber" autofocus required
					placeholder="12-digit Number">
			</tr>
			<tr>
				<td><b>CVV</b></td>
				<td><input type="text" name="cvv" autofocus required
					placeholder="3-digit Secret-code">
			</tr>
			<tr>
				<td><b>Expiry date</b></td>
				<td><input type="text" name="expiryDate" autofocus required
					placeholder="MM-dd-yyyy">
			</tr>
			<tr>
				<td align="center"><input type=submit
					value="Complete Reservation" class="button">
			</tr>
		</table>
		<input type="hidden" name="flightId" value="${flight.id}" />
	</form>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Flights</title>
</head>
<body>
	<h2 align="center">Flight search results</h2>
	<table border="2" align="center">

		<tr>
			
			
			<th>Operating Airline</th>
			<th>Departure City</th>
			<th>Arrival City</th>
			<th>Estimated Departure Time</th>
			<th>Select Flight</th>
		</tr>
		<c:forEach items="${findFlights}" var="findFlights">
			<tr>
				
				
				<td>${findFlights.operatingAirline}</td>
				<td>${findFlights.departureCity}</td>
				<td>${findFlights.arrivalCity}</td>
				<td>${findFlights.estimatedDepartureTime}</td>
				<td><a href="showCompleteReservation?flightId=${findFlights.id}">Select</a></td>
			</tr>
			<br>
		</c:forEach>
	</table>
	<br>
</body>
</html>
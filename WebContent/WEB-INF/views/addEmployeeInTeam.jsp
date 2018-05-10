
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="css" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet"
	href="<css:url value="/recources/css/style.css"/>" />
<title>Team</title>
</head>
<body>
	<header>
		<div class="container">
			<div id="logo">
				<h1>Project Menagment System</h1>
			</div>
			<nav>
				<ul>
					<li><a href="index">Home</a></li>
					<li><a href="insertEmployee">Employee</a></li>
					<li class="current"><a href="addEmployeeInTeam">Team</a></li>
					<li><a href="">Project</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<img src="<css:url value="/recources/img/img.jpg"/>"
		style='position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; z-index: -1;'>
	<section id="showcase">
		<div class="unosT">
			<form:form action="/Spring_MVC_CRUD__/addEmployeeInTeam"
				method="POST" modelAttribute="team">
				<img src="<css:url value="/recources/img/zaposleni.png"/>"
					class="zaposleni">
				<div class="select-style">

					<form:select path="id">
						<form:options items="${al}" itemValue="id" itemLabel="name" />
					</form:select>
					<%-- <spring:message code="testEntry" var="Team" />
					  <form:input path="teamName" placeholder='${Team}'/>. --%>
					<form:input path="teamName" />
					<button class="btnUnesiZaposlenog">Submit</button>

			 
			
			
			
					<%-- <c:forEach var="result" items="${al}">
						<select name="cbZaposleni">
							<option>${result.name}</option>
						</select>
						<form:hidden path="id" value="${result.id}" />
					</c:forEach> --%>

				</div>


			</form:form>
		</div>
	</section>
	<div class="tabelaZaposlenih">
		<table id="tabelaPrikazZaposlenihth">
			<tr>
				<th>Name</th>
				<th>Surname</th>
				<th>Position</th>
				<th>Team name</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="y" items="${innerEmpTea}">
				<tr>
					<td>${y.name}</td>
					<td>${y.surname}</td>
					<td>${y.position}</td>
					<td>${y.teamName}</td>
					<%-- <td><a href="editEmployeeForm/${y.id}">Edit</a></td>
					<td><a href="deleteemp/${y.id}">Delete</a></td> --%>
				</tr>
			</c:forEach>
		</table>
	</div>
	<footer>
		<div class="homePage-footer">
			<div class="container">
				<div
					class="row center-xs center-sm center-md center-ld middle-xs middle-sm middle-md middle-ld">
					<div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
						<p>&copy; 2018 | Made by Nikola Mrkic</p>
					</div>
				</div>
	</footer>
</body>
</html>
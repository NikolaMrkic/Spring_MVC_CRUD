<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="css" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver" var="con"
	url="jdbc:mysql://localhost/project_menagment_sistem" user="root"
	password="" />

<sql:query var="x" dataSource="${con}"> 
   SELECT idCard,name,surname,position FROM employee
</sql:query>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/flexboxgrid.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet"
	href="<css:url value="/recources/css/style.css"/>" />



<title>Wellcome to Project Menagment System</title>
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
					<li class="current"><a href="insertEmploye">Employee</a></li>
					<li><a href="addEmployeeInTeam">Team</a></li>
					<li><a href="index">Project</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<img src="<css:url value="/recources/img/img.jpg"/>"
		style='position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; z-index: -1;'>

	<section id="showcase">
		<div class="unosZaposlenog">
			<img src="<css:url value="/recources/img/zaposleni.png"/>"
				class="zaposleni">



			<form:form method="post" action="/Spring_MVC_CRUD__/save"
				modelAttribute="emp">
				
				<div class="input-filed">
					<label class="active">Id Card</label>
					<form:input type="text" id="name" path="idCard" value="" />

				</div>
				<div class="input-filed">
					<label class="active">Name</label>
					<form:input type="text" path="name" value="" />
				</div>
				<div class="input-filed">
					<label class="active">Surname</label>
					<form:input type="text" id="name" path="surname" value="" />
				</div>
				<div class="input-filed">
					<label class="active">Position</label>
					<form:input type="text" id="name" path="position" value="" />

				</div>

				<button class="btnUnesiZaposlenog">Submit</button>


			</form:form>
		</div>

	</section>

	<div class="tabelaZaposlenih">
		<table id="tabelaPrikazZaposlenihth">
			<tr>
				<th>Id Card</th>
				<th>Name</th>
				<th>Surname</th>
				<th>Position</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="y" items="${al}">
				<tr>
					<td>${y.idCard}</td>
					<td>${y.name}</td>
					<td>${y.surname}</td>
					<td>${y.position}</td>
					<td><a href="editEmployeeForm/${y.id}">Edit</a></td>
					<td><a href="deleteemp/${y.id}">Delete</a></td>
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
			</div>
	</footer>
</body>
</html>
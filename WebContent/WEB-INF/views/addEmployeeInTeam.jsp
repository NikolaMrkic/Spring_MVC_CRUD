<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="css" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%-- <sql:setDataSource driver="com.mysql.jdbc.Driver" var="con"
	url="jdbc:mysql://localhost/Project_Menagment_System" user="root" password="" />
<sql:query var="x" dataSource="${con}"> 
    SELECT  z.name ,z.position ,t.team_name 
    FROM employee AS z 
    INNER JOIN team AS t 
    ON
    z.id = t.id_employee;
</sql:query>
<sql:query var="select" dataSource="${con}">
    select * from employee
</sql:query> --%>

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
			<form:form
				action="/SpringMVC_CRUD_ProjectMenagment_System/addEmpInTeam/id"
				method="POST" modelAttribute="team">
				<img src="<css:url value="/recources/img/zaposleni.png"/>"
					class="zaposleni">
				<div class="select-style">
					<%-- <select name="cbZaposleni">
						<option>Employee name</option>
						<c:forEach var="result" items="${al}">
							<option>${result.name}</option>
						</c:forEach>
					</select> --%>
					
					
					
					
					<c:forEach var="result" items="${al}">
						<select name="cbZaposleni">
							<option>${result.name}</option>
						</select>
						<form:hidden path="id" value="${result.id}" />
					</c:forEach>

				</div>
				<form:input path="teamName"/>
			<!-- <input type="text" name="nazivTima" placeholder="Team name"> -->
				<button class="btnUnesiZaposlenog">Submit</button>
			</form:form>
		</div>
	</section>
	<div class="tabelaZaposlenih">
		<table id="tabelaPrikazZaposlenihth">
			<tr>
				<th>Name</th>
				<th>Surname</th>
				<th>Team name</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="y" items="${x.rows}">
				<tr>
					<td>${y.Ime}</td>
					<td>${y.Surname}</td>
					<td>${y.Position}</td>
					<td>${y.TeamName}</td>
					<td><a href="EditServletZaposlenog?id=${y.id}">Promeni</a></td>
					<td><a href="DeleteFormaZaposlenog?id=${y.id}">Obrisi</a></td>
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
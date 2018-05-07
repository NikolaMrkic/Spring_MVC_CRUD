<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="css" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="<css:url value="/recources/css/style.css"/>" />
<title>Promena Zaposlenog</title>
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
					<li class="current"><a href="insertEmployee">Employee</a></li>
					<li><a href="insertEmployeeInTeam">Team</a></li>
					<li><a href="">Project</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<img src='img/img.jpg'
		style='position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; z-index: -1;'>


	<form:form action="/SpringMVC_CRUD_ProjectMenagment_System/editsave"
		method="POST">


		<c:forEach var="vehicle" items="${list}">
			<input type="hidden" name="id" value="${Zaposleni.id}" />


			<section id="showcase">
				<div class="editZaposlenog">

					<img src="<css:url value="/recources/img/zaposleni.png"/>"
						class="zaposleni">

					<table class="tabela">
						<tr>
							<td></td>
							<td><form:hidden path="id" /></td>
						</tr>
						<tr>
							<td>Name :</td>
							<td><form:input path="name" /></td>
						</tr>
						<tr>
							<td>Surname :</td>
							<td><form:input path="surname" /></td>
						</tr>
						<tr>
							<td>idCard :</td>
							<td><form:input path="idCard" /></td>
						</tr>
						<tr>
							<td>Position :</td>
							<td><form:input path="position" /></td>
						</tr>

						<tr>
							<td></td>
							<td><input type="submit" value="Sacuvaj Promenu" /></td>
						</tr>
					</table>

					<button class="btnUnesiZaposlenog">Change</button>
		</c:forEach>
	</form:form>
	</div>

	</section>
	</form>



	<footer>
		<div class="homePage-footer">
			<div class="container">
				<div
					class="row center-xs center-sm center-md center-ld middle-xs
					middle-sm middle-md middle-ld">
					<div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
						<p>&copy; 2018 | Made by Nikola Mrkic</p>
					</div>
	</footer>

</body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
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
					<li class="current"><a href="insertEmploye">Employee</a></li>
					<li><a href="addEmployeeInTeam">Team</a></li>
					<li><a href="index">Project</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<img src="<css:url value="/recources/img/img.jpg"/>"
		style='position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; z-index: -1;'>



	<form:form action="/Spring_MVC_CRUD__/editsave" method="POST">

		<section id="showcase">
			<div class="editZaposlenog">

				<img src="<css:url value="/recources/img/zaposleni.png"/>"
					class="zaposleni">

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


				<button class="btnUnesiZaposlenog">Change</button>

			</div>
		</section>
	</form:form>




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
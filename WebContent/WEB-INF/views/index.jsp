<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="css" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="boot" uri="http://java.sun.com/jsp/jstl/core"%>

<sql:setDataSource driver="com.mysql.jdbc.Driver" var="con"
	url="jdbc:mysql://localhost/ucinak_zaposlenog" user="root" password="" />

<sql:query var="z" dataSource="${con}"> 
    SELECT count( * ) as id FROM zaposleni
</sql:query>
<sql:query var="t" dataSource="${con}"> 
    SELECT count( * ) as id FROM tim
</sql:query>
<sql:query var="p" dataSource="${con}"> 
    SELECT count( * ) as id FROM projekat
</sql:query>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="<css:url value="/recources/css/style.css"/>" />

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
					<li class="current"><a href="index">Home</a></li>
					<li><a href="insertEmployee">Employee</a></li>
					<li><a href="addEmployeeInTeam">Team</a></li>
					<li><a href="index">Project</a></li>
					


				</ul>
			</nav>
		</div>
	</header>


	<div class="container">
		<div id="pozadinaH">
			<img src="<css:url value="/recources/img/p.gif"/>" width="1320" height="250" alt="Computer Hope">
		</div>
	</div>
	<section id="boxes">
		<div class="container">
			<div class="box">
			<img src="<css:url value="/recources/img/zaposleni.png"/>"width="320" height="100"
					alt="Computer Hope">
				<p>Number of employees working on current projects.</p>
				<c:forEach var="za" items="${z.rows}">
					<tr>
						<td>
							<button class="btnZaZTP">${za.id}</button>

						</td>
					</tr>
				</c:forEach>

			</div>
			<div class="box">
			<img src="<css:url value="/recources/img/tim.png"/>"width="320" height="100"
					alt="Computer Hope">
				<p>Number of current teams working in different projects.</p>
				<c:forEach var="tm" items="${t.rows}">
					<tr>
						<td>
							<button class="btnZaZTP">${tm.id}</button>
						</td>
					</tr>
				</c:forEach>
			</div>
			<div class="box">
			<img src="<css:url value="/recources/img/projekat.gif"/>"width="320" height="100"
					alt="Computer Hope">
				
				<p>The number of projects that we are currently working.</p>
				<c:forEach var="pr" items="${p.rows}">
					<tr>
						<td>
							<button class="btnZaZTP">${pr.id}</button>
						</td>
					</tr>
				</c:forEach>
			</div>
		</div>
	</section>

	<footer>
		<div class="login-footer">
			<div class="container">
				<div class="row center-xs center-sm center-md center-ld middle-xs middle-sm middle-md middle-ld"></div>
					<div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <p> &copy; 2018 | Made by Nikola Mrkic </p>
                </div>
	</footer>
</body>
</html>
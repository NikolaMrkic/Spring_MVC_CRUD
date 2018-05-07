<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- 
     <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <!--  <link rel="stylesheet" type="text/css" href="/MojCSS.css">-->
 <spring:url value="/recources/MojCSS2.css" var="izgled"/>
 <link rel="stylesheet" href="${izgled}">
</head>
<body>
ovde ce biti prikaz forme
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<h1>Employees List</h1>
	<table border="1" width="70%" cellpadding="2" class="tabela">
		<tr>
			<th>Name</th>
			<th>Surmane</th>
			<th>IdCard</th>
			<th>Position</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="emp" items="${list}">
			<tr>
				<td>${emp.name}</td>
				<td>${emp.surname}</td>
				<td>${emp.idCard}</td>
				<td>${emp.position}</td>
				<td><a href="editemp/${emp.id}">Edit</a></td>
				<td><a href="deleteemp/${emp.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br/>  
   <a href="insertEmployee">Add New Employee</a>  
   

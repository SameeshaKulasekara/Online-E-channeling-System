<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
	
</head>
<body>

	<table>
	<c:forEach var="cp" items="${cpDetails}">
	
	<c:set var="name" value="${cp.username}"/>
	<c:set var="email" value="${cp.email}"/>
	<c:set var="mobile" value="${cp.phone}"/>
	<c:set var="message" value="${cp.message}"/>
	
	
	<tr>
		<td>contact_patient Username</td>
		<td>${cp.username}</td>
	</tr>
	<tr>
		<td>contact_patient Email</td>
		<td>${cp.email}</td>
	</tr>
	
	<tr>
		<td>contact_patient Phone</td>
		<td>${cp.phone}</td>
	</tr>
	
	<tr>
		<td>contact_patient Message</td>
		<td>${cp.message}</td>
	</tr>
	
	
	</c:forEach>
	</table>
	
	
	<c:url value="updatecontact_patient.jsp" var="cpupdate">
		<c:param name="name" value="${username}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="mobile" value="${phone}"/>
		<c:param name="message" value="${message}"/>
		
	</c:url>
	
	<a href="${cpupdate}">
	<input type="button" name="update" value="Update Patient Data">
	</a>
	
	 <c:url value="deletecontact_patient" var="cpDelete">
       <c:param name="name" value="${username}"/>
	   <c:param name="email" value="${email}"/>
	   <c:param name="mobile" value="${phone}"/>
	   <c:param name="message" value="${message}"/>
     </c:url>
     <a href="${cpDelete}">
     <input type="button" class = "button" name="delete" value="Delete Data">
     </a>
	
	
</body>
</html>
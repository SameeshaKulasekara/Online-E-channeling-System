<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<c:forEach var="rp" items="${rpDetails}">
	
	<c:set var="name" value="${rp.username}"/>
	<c:set var="email" value="${rp.email}"/>
	<c:set var="birthday" value="${rp.birthday}"/>
	<c:set var="phone" value="${rp.phone}"/>
	<c:param name="gender" value="${gender}"/>
	<c:set var="password" value="${rp.password}"/>
	
	
	
	<tr>
		<td>Register_Patient Username</td>
		<td>${rp.username}</td>
	</tr>
	<tr>
		<td>Register_Patient Email</td>
		<td>${rp.email}</td>
	</tr>
	
	<tr>
		<td>Register_Patient Birthday</td>
		<td>${rp.birthday}</td>
	</tr>
	
	<tr>
		<td>Register_Patient Phone</td>
		<td>${rp.phone}</td>
	</tr>
	
	<tr>
		<td>Register_Patient Gender</td>
		<td>${rp.gender}</td>
	</tr>
	
	<tr>
		<td>Register_Patient Password</td>
		<td>${rp.password}</td>
	</tr>
	
	
	</c:forEach>
	</table>
	
	
	<c:url value="updateregister_patient" var="rpupdate">
		<c:param name="name" value="${username}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="birthday" value="${birthday}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="gender" value="${gender}"/>
		<c:param name="password" value="${password}"/>
	
		
	</c:url>
	
	<a href="${rpupdate}">
	<input type="button" name="update" value="Update Register Data">
	</a>
	
	 <c:url value="deleteregister_patient" var="rpDelete">
       <c:param name="name" value="${username}"/>
	   <c:param name="email" value="${email}"/>
	   <c:param name="birthday" value="${birthday}"/>	   
	   <c:param name="phone" value="${phone}"/>
	   <c:param name="gender" value="${gender}"/>
	   <c:param name="password" value="${password}"/>
     </c:url>
     <a href="${rpDelete}">
     <input type="button" class = "button" name="delete" value="Delete Data">
     </a>
	
</body>
</html>
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
  			width:300px;
		}
	</style>
	
</head>
<body>

<table>
	<c:forEach var="sd" items="${sdDetails}">
	
	<c:set var="id" value="${sd.Doctor_id}"/>
	<c:set var="name" value="${sd.Doctor_name}"/>
	<c:set var="specialization" value="${sd.specialization}"/>
	<c:set var="hospital" value="${sd.hospital}"/>
	<c:set var="date" value="${sd.date}"/>
	
	
	
	<tr>
		<td>search_doctor Doctor_id</td>
		<td>${sd.Doctor_id}</td>
	</tr>
	<tr>
		<td>search_doctor Doctor_name</td>
		<td>${sd.Doctor_name}</td>
	</tr>
	
	<tr>
		<td>search_doctor specialization</td>
		<td>${sd.specialization}</td>
	</tr>
	
	<tr>
		<td>search_doctor hospital</td>
		<td>${sd.hospital}</td>
	</tr>
	
	<tr>
		<td>search_doctor date</td>
		<td>${sd.date}</td>
	</tr>
	
	
	</c:forEach>
	</table>	
	
	<c:url value="updatesearch_doctor.jsp" var="sdupdate">
		<c:param name="id" value="${Doctor_id}"/>
		<c:param name="fname" value="${Doctor_name}"/>
		<c:param name="specialist" value="${specialization}"/>
		<c:param name="hospital" value="${hospital}"/>
		<c:param name="date" value="${date}"/>
		
		
	</c:url>
	
	<a href="${sdupdate}">
	<input type="button" name="update" value="Update Doctor Data">
	</a>
	
	 <c:url value="deletesearch_doctor.jsp" var="sdDelete">
       <c:param name="id" value="${Doctor_id}"/>
	   <c:param name="fname" value="${Doctor_name}"/>
	   <c:param name="specialist" value="${specialization}"/>
	   <c:param name="hospital" value="${hospital}"/>
	   <c:param name="date" value="${date}"/>
     </c:url>
     
     <a href="${sdDelete}">
     <input type="button" class = "button" name="delete" value="Delete Data">
     </a>
	
	
</body>
</html>
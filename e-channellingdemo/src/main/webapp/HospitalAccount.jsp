<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HospitalAccount Page</title>
<link rel = "stylesheet" href="styles/home.css" type="text/css">
<style>
   body{
	background-image:url("images/home/home.jpg");
	background-attachment: fixed;
    background-size: cover;
    font-family: Arial;
  }
  h1{
    text-align:left;
    font-size:90px;
  }
  
  table{
      width:500px;
      margin-left:150px;
      margin-top:150px;
      
  }
  tr,td{
  
     height:50px;
  }
  
  .button{
     margin-left:150px;
     background-color:#04AA6D;
  }
</style>
</head>
<body>
     <table border="3">
     <c:forEach var="pat" items="${patDetails}">
     
     <c:set var="id" value="${pat.id}"/>
     <c:set var="name" value="${pat.name}"/>
     <c:set var="hospital" value="${pat.hospital}"/>
     <c:set var="province" value="${pat.province}"/>
     <c:set var="city" value="${pat.city}"/>
     
     <tr>
       <td>User ID</td>
       <td>${pat.id}</td>
     </tr>
     
     <tr>
       <td>Full Name</td>
       <td>${pat.name}</td>
     </tr>
     
     <tr>
       <td>Hospital</td>
       <td>${pat.hospital}</td>
     </tr>
     
     <tr>
       <td>Province</td>
       <td>${pat.province}</td>
     </tr>
     
     <tr>
       <td>City</td>
       <td>${pat.city}</td>
     </tr>
     
     </c:forEach>
     </table></br>
     
     <c:url value="UpdateHome.jsp" var="patupdate">
       <c:param name="id" value="${id}"/>
       <c:param name="fname" value="${name}"/>
       <c:param name="hospital" value="${hospital}"/>
       <c:param name="province" value="${province}"/>
       <c:param name="city" value="${city}"/>
     </c:url>
     
     <a href="${patupdate}">
     <input type="button" class = "button" name="update" value="Update Data">
     </a>
     
     <c:url value="DeleteHome.jsp" var="patDelete">
       <c:param name="id" value="${id}"/>
       <c:param name="fname" value="${name}"/>
       <c:param name="hospital" value="${hospital}"/>
       <c:param name="province" value="${province}"/>
       <c:param name="city" value="${city}"/>
     </c:url>
     <a href="${patDelete}">
     <input type="button" class = "button" name="delete" value="Delete Data">
     </a>
     
</body>
</html>
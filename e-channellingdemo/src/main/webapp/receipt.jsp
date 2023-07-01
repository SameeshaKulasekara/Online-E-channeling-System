<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<style type="text/css">
	
.button {
  background-color: #4CAF50; 
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  align:center;
}
.button1 {
  background-color: #4CAF50; 
  color: black; 
 
}

.button1:hover {
  background-color: #C71585;
  color: white;
  }
  .button 3{
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  float :right;
  bottom: 23px;
  right: 28px;
  width: 280px;
 
  
  }
  
.button3:hover {
  background-color: #f44336;
  color: white;
}


.button4 {
  background-color:#708090;
  color: black;
  border: 2px solid #e7e7e7;
}

.button4:hover {background-color: #B22222;}



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
	<c:forEach var="pat" items="${patDetails}">
	
	<c:set var="id" value="${pat.appoinment_ID}"/>
	<c:set var="pname" value="${pat.patient_name}"/>
	<c:set var="page" value="${pat.patient_age}"/>
	<c:set var="nic" value="${pat.nic}"/>
	<c:set var="guardian" value="${pat.guardian}"/>
	<c:set var="address" value="${pat.address}"/>
	<c:set var="telephone" value="${pat.telephone}"/>
	<c:set var="email" value="${pat.email}"/>
	<c:set var="password" value="${pat.password}"/>
	<c:set var="gender" value="${pat.gender}"/>
	<c:set var="doctor" value="${pat.doctor}"/>
	
	<tr>
		<td>appoinment ID</td>
		<td>${pat.appoinment_ID}</td>
	</tr>
	<tr>
		<td>Patient Name</td>
		<td>${pat.patient_name}</td>
	</tr>
	<tr>
		<td>Patient age</td>
		<td>${pat.patient_age}</td>
	</tr>
	<tr>
		<td>NIC</td>
		<td>${pat.nic}</td>
	</tr>
	<tr>
		<td>Guardian Name</td>
		<td>${pat.guardian}</td>
	</tr>
	<tr>
		<td>Address</td>
		<td>${pat.address}</td>
	</tr>
	<tr>
		<td>Telephone no</td>
		<td>${pat.telephone}</td>
	</tr>
	<tr>
		<td>Email</td>
		<td>${pat.email}</td>
	</tr>
	<tr>
		<td>Password</td>
		<td>${pat.password}</td>
	</tr>
	<tr>
		<td>Gender</td>
		<td>${pat.gender}</td>
	</tr>

	<tr>
		<td>Doctor</td>
		<td>${pat.doctor}</td>
	</tr>

	
	</c:forEach>
	
</table>
	
	<c:url value="updateappointment.jsp" var="patupdate">
	  <c:param name="appoint_id" value="${id }"/>
	  <c:param name="patient_name" value="${pname }"/>
	  <c:param name="age" value="${page }"/>
	  <c:param name="nic" value="${nic }"/>
	  <c:param name="guardian" value="${guardian }"/>
	  <c:param name="address" value="${address }"/>
	  <c:param name="telephone" value="${telephone }"/>
	  <c:param name="email" value="${email }"/>
	  <c:param name="pass" value="${password }"/>
	  <c:param name="gender" value="${gender }"/>
	  <c:param name="doctor" value="${doctor }"/><br><br>
	    
	</c:url>
	
	<a href="${patupdate }"><br>
	<button class="button button1" >update my data</button>

	</a>
	
	<c:url value="DeleteReceipt.jsp" var="patdelete">
	
	 <c:param name="appoint_id" value="${id }"/>
	  <c:param name="patient_name" value="${pname }"/>
	  <c:param name="age" value="${page }"/>
	  <c:param name="nic" value="${nic }"/>
	  <c:param name="guardian" value="${guardian }"/>
	  <c:param name="address" value="${address }"/>
	  <c:param name="telephone" value="${telephone }"/>
	  <c:param name="email" value="${email }"/>
	  <c:param name="pass" value="${password}"/>
	  <c:param name="gender" value="${gender }"/>
	  <c:param name="doctor" value="${doctor }"/><br><br>
	
	</c:url>
	<a href="${patdelete }">   
	<button class="button button4">Delete my data</button><br><br>
    </a>
    
    
    <button class="button button3" href="http://localhost:8090/online_channeling/Home.jsp">close</button> 
	
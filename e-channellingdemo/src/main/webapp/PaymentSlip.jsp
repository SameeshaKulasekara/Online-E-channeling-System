<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PaymentSlip Page</title>
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
      width:400px;
      margin-left:150px;
      margin-top:100px;
      
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
     <c:forEach var="pay" items="${payDetails}">
     
     <c:set var="ID" value="${pay.ID}"/>
     <c:set var="RefNo" value="${pay.refno}"/>
     <c:set var="Name" value="${pay.name}"/>
     <c:set var="CardNo" value="${pay.cardno}"/>
     <c:set var="Month" value="${pay.month}"/>
     <c:set var="ExpYear" value="${pay.expyear}"/>
     <c:set var="CVV" value="${pay.cvv}"/>
     <c:set var="Amount" value="${pay.amount}"/>
     
     <tr>
       <td>User ID</td>
       <td>${pay.ID}</td>
     </tr>
     
     <tr>
       <td>Reference Number</td>
       <td>${pay.refno}</td>
     </tr>
     
     <tr>
       <td>Name on Card</td>
       <td>${pay.name}</td>
     </tr>
     
     <tr>
       <td>Card Number</td>
       <td>${pay.cardno}</td>
     </tr>
     
     <tr>
       <td>ExpMonth</td>
       <td>${pay.month}</td>
     </tr>
     
      <tr>
       <td>ExpYear</td>
       <td>${pay.expyear}</td>
     </tr>
     
      <tr>
       <td>CVV</td>
       <td>${pay.cvv}</td>
     </tr>
     
      <tr>
       <td>Amount</td>
       <td>${pay.amount}</td>
     </tr>
     
     </c:forEach>
     </table></br>
     
     <c:url value="UpdatePayment.jsp" var="payupdate">
       <c:param name="ID" value="${ID}"/>
       <c:param name="refer" value="${RefNo}"/>
       <c:param name="cardname" value="${Name}"/>
       <c:param name="cardnumber" value="${CardNo}"/>
       <c:param name="expmonth" value="${Month}"/>
       <c:param name="expyear" value="${ExpYear}"/>
       <c:param name="cvv" value="${CVV}"/>
       <c:param name="amount" value="${Amount}"/>
     </c:url>
     
     <a href="${payupdate}">
     <input type="button" class = "button" name="update" value="Update Data">
     </a>
     
     <c:url value="DeletePay.jsp" var="payDelete">
       <c:param name="ID" value="${ID}"/>
       <c:param name="refer" value="${RefNo}"/>
       <c:param name="cardname" value="${Name}"/>
       <c:param name="cardnumber" value="${CardNo}"/>
       <c:param name="expmonth" value="${Month}"/>
       <c:param name="expyear" value="${ExpYear}"/>
       <c:param name="cvv" value="${CVV}"/>
       <c:param name="amount" value="${Amount}"/>
     </c:url>
     
     <a href="${payDelete}">
     <input type="button" class = "button" name="delete" value="Delete Data">
     </a>
   
</body>
</html>
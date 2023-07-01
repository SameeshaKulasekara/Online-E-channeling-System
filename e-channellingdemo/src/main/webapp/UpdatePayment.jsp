<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdatePayment Page</title>
<link rel = "stylesheet" href="styles/home.css" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

     <%
       String id = request.getParameter("ID");
       String refeno = request.getParameter("refer");
       String name = request.getParameter("cardname");
       String cardno = request.getParameter("cardnumber");
       String month = request.getParameter("expmonth");
       String year = request.getParameter("expyear");
       String cvv = request.getParameter("cvv");
       String amount = request.getParameter("amount");
     %>

     <form action="payupdate" method="post">
     <h4><b>Personal Details</b></h4>
     <hr>
     <label>User ID</label>
     <input type="text" name="ID" placeholder="Your ID.." value="<%=id%>" readonly></br>
     <label>Reference Number</label>
     <input class ="pay1" type="text" name="refer" placeholder="Enter reference number..." value="<%=refeno%>"></br>
     <h4><b>Payment Details</b></h4>
     <hr>
     <div class="col-50">
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i></br>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="John More Doe" value="<%=name%>">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" value="<%=cardno%>">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September" value="<%=month%>">
            <div class="row1">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018" value="<%=year%>">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352" value="<%=cvv%>">
              </div>
            </div>
            <label for="amount">Amount</label>
            <input type="text" id="amount" name="amount" placeholder="Your payment.." value="<%=amount%>">
            <input type="submit" value="Update Data" class="btn">
          </div> 
             </form>    
             
</body>
</html>
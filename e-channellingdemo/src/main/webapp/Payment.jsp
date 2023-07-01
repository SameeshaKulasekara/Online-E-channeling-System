<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Page</title>
<link rel = "stylesheet" href="styles/home.css" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
  <header> 
       <h4 style="font-family:Sofia;" class = "line1"><i>DocSKG</i></h4>
       <p style="text-align:center;">Channel your doctor</p>
       <hr class = "hr1"></hr>
         <img align="left" class="image" src="images/home/stethoscope.jpg" width="100px" height="100px">
            <div class="dropdown">
             <button class="dropbtn">Menu</button>
       <div class="dropdown-content">
           <a href="http://localhost:8090/online_channeling/Home.jsp">Home</a>
           <a href="#">Login</a>
           <a href="#">Sign Up</a>
           <a href="#">Search Doctor</a>
           <a href="http://localhost:8090/online_channeling/Apoointment.jsp">Get Appointments</a>
           <a href="http://localhost:8090/online_channeling/Payment.jsp">Make Payment</a>
           <a href="http://localhost:8090/online_channeling/about.jsp">About Us</a>
           <a href="#">Our Service</a>
           <a href="#">Contact Us</a>
        </div>
           </div>
       <div align="right">
           <button name ="Login" class ="btn1">Login</button>
           <button name ="Signin" class ="btn2">Sign In</button>
       </div>
       <hr class = "hr2"></hr>
    </header>
    
      <h2 style="text-align:center;"><b>Make Payments</b></h2>
      <div class="row">
      <div class="column left" style="background-color:#aaa;">
         <img class="img4" src="images/home/girl.jpg" width="350px" height="350px"></br></br>
         <p style="text-align:center;"><u><b>Patient should make payments under their userId and reference number that given when making an appointment.Then payment slip will sent to your mobile phone.</b></u></p>
         <p style="text-align:center;">Online payment method tooks on more work for customers.It saves your time and gives a higher payment security.Better customer convenience,
         Saves processing costs,more efficient,takes cash out of the equation,generates more revenue,Low risk of theft,Contactless are some other benifits of online paying.</p>
     </div>
     <div class="column right" style="background-color:#bbb;">
     
     <form action="payinsert" method="post">
     <h4><b>Personal Details</b></h4>
     <hr>
     <label>User ID</label>
     <input type="text" name="ID" placeholder="Your ID.."></br>
     <label>Reference Number</label>
     <input class ="pay1" type="text" name="refer" placeholder="Enter reference number..."></br>
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
            <input type="text" id="cname" name="cardname" placeholder="John More Doe">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">
            <div class="row1">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
            <label for="amount">Amount</label>
            <input type="text" id="amount" name="amount" placeholder="Your payment..">
            <input type="submit" value="Pay" class="btn">
            <div class="row2">
                  <div class="col-30">
                       <a style="color:red; text-align:right;" href="http://localhost:8090/online_channeling/ValidatePay.jsp">Validate Payment</a>
                  </div>
                  <div class="col-30">
                       <a style="color:red; text-align:right;" href="http://localhost:8090/online_channeling/ValidatePay.jsp">Update Payment</a>
                  </div>
                  <div class="col-30">
                       <a style="color:red; text-align:right;" href="http://localhost:8090/online_channeling/ValidatePay.jsp">Delete Payment</a>
                  </div>
            </div>
          </div> 
             </form>    
        </div>    
    </div>
    
     <footer>
     <div class="box3">
     <div class="mid">
     <div style="align:left;" class="mid1">
     <h2>Need Help?</h2>
     </div>
     <div  class="mid1">
     <h2 style="align:right;">info@docskg.com</h2>
     </div>
     </div>
      <div style="align:left; margin-left:25px;" class ="box4">
         <h4><b>FOLLOW DocSKG</b></h4>
         <ul>
         <a href="http://facebook.com">Facebook</a></br></br>
         <a href="http://twitter.com">Twitter</a></br></br>
         <a href="http://google.com">Google</a></br>
         </ul>
         <h4>Call 0112568965 for Agent Assistance</h4>
      </div>
      <div style="align:center;" class="box4">
       <h4><b>SERVICES</b></h4>
       <ul>
         <a href="http://localhost:8090/online_channeling/Home.jsp">Visit your hospital</a></br></br>
         <a href="http://localhost:8090/online_channeling/Apoointment.jsp">Channel your doctor</a></br></br>
         <a href="http://localhost:8090/online_channeling/Payment.jsp">Make payments online</a></br></br>
       </ul>
       </br>
       <p><i>Copyright © 2021 docskg.com. All Rights Reserved</i></p>
       </div>
       <div style="align:right; margin-right:25px;" class="box4">
       <h4><b>DocSKG</b></h4>
       <ul>
         <a href="http://localhost:8090/online_channeling/about.jsp">About Us</a></br></br>
         <a href="#">Contact Us</a></br></br>
       </ul>
       </div>
       </div>
    </footer>

</body>
</html>
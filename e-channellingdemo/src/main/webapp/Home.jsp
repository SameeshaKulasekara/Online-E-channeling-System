<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel = "stylesheet" href="My CSS/home.css" type="text/css">
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
           <a href="http://localhost:8090/e-channellingdemo/search_doctorinsert.jsp">Search Doctor</a>
           <a href="http://localhost:8090/online_channeling/Apoointment.jsp">Get Appointments</a>
           <a href="http://localhost:8090/online_channeling/Payment.jsp">Make Payment</a>
           <a href="http://localhost:8090/online_channeling/about.jsp">About Us</a>
           <a href="http://localhost:8090/online_channeling/about.jsp">Our Service</a>
           <a href="http://localhost:8090/e-channellingdemo/contact_patientinsert.jsp">Contact Us</a>
        </div>
           </div>
       <div align="right">
           <button name ="Login" class ="btn1">Login</button>
           <button name ="Signin" class ="btn2">Sign In</button>
       </div>
       <hr class = "hr2"></hr>
    </header>
    
    <div class ="box1">
     <div class ="box2">
      <img class = "img1" src="images/home/doc.jpg" width="400px" height="150px">
      <img class = "img2" src="images/home/cover1.jpg" width="400px" height="150px">
      <img class = "img3" src="images/home/cover2.jpg" width="400px" height="200px">   
      </div>
    <div class="box2">
    <div class ="container">
    <h3 class = "line2">Search Hospital</h3></br>
    <hr>
    
    <form class = "form" action="insert" method ="post">
    <div class="row1">
              <div class="col-50">
                <label>User ID</label>
                <input type="text" name="id" placeholder="Your ID..">
                
              </div>
              <div class="col-50">
                <label>Full Name</label>
                <input type="text" id="fname" name="fname" placeholder="Your name.."></br></br>
              </div>
            </div>
   
    <label>Hospital</label>
    <select id="hospital" name="hospital">
    <option value="any">Any</option>
    <option value="city_medical">City Medical Service</option>
    <option value="lanka">Lanka Hospital</option>
    <option value="lady">Lady Ridgeway</option>
    <option value="people">Peoples Hospital</option>
    <option value="nawa">Nawaloka Hospital</option>
    <option value="sethma">Sethma Hospital</option>
    <option value="asiri">Asiri Hospital</option>
    </select></br></br1>
    
    <label>Province</label>
    <select id="province" name="province">
    <option value="western">Western Province</option>
    <option value="Central">Central Province</option>
    <option value="north">North Central Province</option>
    <option value="northern">Northern Province</option>
    <option value="northw">North Western Province</option>
    <option value="sabara">Sabaragamuwa Province</option>
    <option value="uwa">Uwa Province</option>
    <option value="southern">Southern Province</option>
    <option value="eastern">Eastern Province</option>
    </select></br></br>
    
    <label>City</label>
    <select id="city" name="city">
    <option value="colombo">Colombo</option>
    <option value="ragama">Ragama</option>
    <option value="maharagama">Maharagama</option>
    <option value="gampaha">Gampaha</option>
    <option value="minu">Minuwangoda</option>
    </select></br></br>
    <hr>

   <input type="submit" value="Submit">
   <div class="row2">
     <div class="col-30">
        <a style="color:red; text-align:right;" href="http://localhost:8090/online_channeling/Validate.jsp">Validate Details</a>
     </div>
     <div class="col-30">
        <a style="color:red; text-align:right;" href="http://localhost:8090/online_channeling/Validate.jsp">Update Details</a>
     </div>
     <div class="col-30">
        <a style="color:red; text-align:right;" href="http://localhost:8090/online_channeling/Validate.jsp">Delete Details</a>
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
     <div style="align:right;" class="mid1">
     <h2>info@docskg.com</h2>
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
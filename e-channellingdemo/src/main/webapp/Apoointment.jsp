<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Appointment Page</title>
<link rel="stylesheet" type="text/css" href="styles/appoint.css">
<link rel = "stylesheet" href="styles/home.css" type="text/css">   
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
           <a href="#">About Us</a>
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
 <div class="login-box">
   

     <img src="images/appointment/team.jpg" class="avatar">
        
         <div class="appoinform"><h3>Appointment</h3></div>

            <div class="container">
              	<form  action="apointinsert" method="post">

                   
		                         <p for="pname">Patient name</p>
		                          <input type="text" id="pname" name="Patient name" placeholder="patient name.."> <br>

                                <p for="age">Age</p>
                                <input type="text" id="age" name="Age" placeholder="patient age"><br>
                               
                                <p for="nic">NIC</p>
                                 <input type="text" id="nic" name="NIC" placeholder="patient or guardian"> <br>
                                
                               <p for="guardian">Guardian Name</p>
                                 <input type="text" id="guardian" name="Guardian name" placeholder="Guardian name"> <br>
                                
                               <p for="address">Address</p>
                                <textarea id="address" name="Address" placeholder="your address.." style="height:100px"></textarea> <br>

                               <p for="telephone">Telephone Number</p>
                                 <input type="text" id="teleno" name="Telephone no" placeholder="Telephone no"> <br>
                                 
                                 
                                  <p for="email">Email</p>
                                 <input type="email" id="email" name="email" placeholder="abc@gmail.com"> <br>

                                 <p for="password">Password</p>
                                 <input type="password" id="password" name="password" placeholder="your password"> <br>
                                 
                                <div class="label">  
                                     <label for="gender">Gender</label><br>
                                      <select id="gender" name="gender">
                                      <option value="male">Male</option>
                                      <option value="female">Female</option>
                                     </select>
                                      <br>
                                      
                                    <label for="doctor">Doctor</label>
                                    <select id="doctor" name="Doctor_name">
                                      <option value="psycologist">Psycologist-Doctor Kamal perera</option>
                                      <option value="neurosergist">Neurosergist-Doctor W.M.P.Sooriyabandara</option>
                                      <option value="eyesergist">Eyesergist-Doctor K.M.D.Prabashwara</option>
                                     <option value="sarwanga">sarwanga specialist-Doctor W.A.P.Silva</option>
                                     <option value="peadiatric">Peadriatric specialist-Doctor M.Y.Miyuru Asanka </option>
                                     <option value="Allergy">Allergy specialist-Doctor D.Y.S.K </option>
                                     </select>
                                 </div>                      
                    <br><br><br><br></br></br></br>     
                <input type="submit" value="Submit">
                <input type="submit" value="close" href="http://localhost:8090/online_channeling/Home.jsp">
              </form>
            </div>
        </div>

<footer>
     <div style="margin-top:1600px;" class="box3">
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
         <a href="#">About Us</a></br></br>
         <a href="#">Contact Us</a></br></br>
       </ul>
       </div>
       </div>
    </footer>

</body>
</html>

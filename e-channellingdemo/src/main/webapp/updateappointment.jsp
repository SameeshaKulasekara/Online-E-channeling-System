<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
<body>
 
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 95%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
  margin:6px;
  
}


input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  
}

input[type=submit]:hover {
  background-color:#3F000F;
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
  
}

.container {
  border-radius: 5px;
  background-color:#77BFC7;
  padding: 20px;
  float: center;
  width: 70%;
  margin-top: 6px;
  align:center;
  margin-left:200px;
  margin-right:200px;
  max-width:400px;
}


</style>

<%
 String id=request.getParameter("appoint_id");
 String pname=request.getParameter("patient_name");
 String age=request.getParameter("age");
 String NIC=request.getParameter("nic");
 String guardian=request.getParameter("guardian");
 String address=request.getParameter("address");
 String telephone=request.getParameter("telephone");
 String email=request.getParameter("email");
 String password=request.getParameter("pass");
 String gender=request.getParameter("gender");
 String doctor=request.getParameter("doctor");


%>



<div class=container>
<form action="apointupdate" method="post">

	
	<div class=row>
	  Appointment ID <input type="text" name="appoinID" value="<%=id %>"readonly><br><br>
	  Patient Name<input type="text" name="pname" value="<%=pname%>"><br><br>
	  Patient Age<input type="text" name="p_age" value="<%=age %>"><br><br>
	  NIC<input type="text" name="nic" value="<%=NIC%>"><br><br>
	  Guardian Name<input type="text" name="guardian_name" value="<%=guardian %>"><br><br>
	  Address<input type=text name="address" value="<%=address %>"><br><br>
	  Telephone no<input type="text" name="telephone" value="<%=telephone %>"><br><br>
	  Email<input type="text" name="email" value="<%=email %>"><br><br>
	  password<input type="text" name="psw" value="<%=password %>"><br><br>
	  Gender<input type="text" name="gender" value="<%=gender %>"><br><br>
	 
	    <label for="doctor">Doctor</label>
               <select id="doctor" name="doctor" >
                 <option >"<%=doctor %>"</option>
                  <option value=psycologist>Psycologist-Doctor Kamal perera</option>
                  <option value=neurosergist>Neurosergist-Doctor W.M.P.Sooriyabandara</option>
                  <option value=eyesergist>Eyesergist-Doctor K.M.D.Prabashwara</option>
                   <option value=sarwanga>sarwanga specialist-Doctor W.A.P.Silva</option>
                   <option value=peadiatric>Peadriatric specialist-Doctor M.Y.Miyuru Asanka </option>
                   <option value=Allergy>Allergy specialist-Doctor D.Y.S.K </option>
              </select>
</div>
	  
	   <br><br><br>
	  
	  
 	 <div class=btnsubmit>
 	    <input type="submit" name="submit" value="update my data"><br>
	 </div>
 
</form>
 </div>

</body>
</html>
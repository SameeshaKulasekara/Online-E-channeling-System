<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form class = "form" action="sdinsert" method ="post">
    <div class="row1">
              <div class="col-50">
                <label>Doctor ID</label>
				<input type="text" id="id" name="id" placeholder="Doctor ID.."></br></br1>
                
              </div>
              
              <div class="col-50">
                <label>Doctor Name</label>
                <select id="fname" name="fname">
			    <option value="any">Any</option>
			    <option value="Dr.Prasanna Perera">Dr.Prasanna Perera</option>
			    <option value="Dr.Wishwanath Alagiyawanna">Dr.Wishwanath Alagiyawanna</option>
			    <option value="Dr.Kaushi Wijerathna">Dr.Kaushi Wijerathna</option>
			    <option value="Dr.Madusanka Dasanayaka">Dr.Madusanka Dasanayaka</option>
			    <option value="Dr.Sathya Nirmani Wijesinha">Dr.Sathya Nirmani Wijesinha</option>
			    <option value="Dr.Upeksha Sewwandi Kulasekara">Dr.Upeksha Sewwandi Kulasekara</option>
			    <option value="Dr.Madutharnga Rajapaksha">Dr.Madutharnga Rajapaksha</option>
			    </select></br></br1>
              </div>
              
              <div class="col-200">
              	<label>Specialization-Description</label>
              	<select id="specialist" name="specialist">
			    <option value="any">Any</option>
			    <option value="Accupuncture Physican"></option>
			    <option value="Acting Consultant Neonatologist"></option>
			    <option value="Allergy Specialist"></option>
			    <option value="Ayurveda"></option>
			    <option value="Blood Pressure Monitoring"></option>
			    <option value="Body Composision"></option>
			    <option value="Child Psychologist"></option>
			     <option value="Clinical Psychologist"></option>
			    <option value="Consultant"></option>
			    <option value="Dentist"></option>
			     <option value="General"></option>
			    <option value="Memory Clinic"></option>
			    <option value="Opd"></option>
			    </select></br></br1>
              </div>
              
              <div>
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
              </div>
              
              <div>
              	<label>Date</label>
              	<input type="date" id="date" name="date" placeholder="Any"></br></br>
              </div>     
            </div>
    <hr>

   <input type="submit" value="Search">
   <div class="row2">
     <div class="col-30">
        <a style="color:red; text-align:right;" href="http://localhost:8090/echanneling/Validatesearch_doctor.jsp">Validate Details</a>
     </div>
     <div class="col-30">
        <a style="color:red; text-align:right;" href="http://localhost:8090/echanneling/Validatesearch_doctor.jsp">Update Details</a>
     </div>
     <div class="col-30">
        <a style="color:red; text-align:right;" href="http://localhost:8090/echanneling/Validatesearch_doctor.jsp">Delete Details</a>
     </div>
   </div>
   </div>
   </form>
    </div> 
    </div>

</body>
</html>
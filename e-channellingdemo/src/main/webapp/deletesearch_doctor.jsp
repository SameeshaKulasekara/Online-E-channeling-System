<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
		String Doctor_id = request.getParameter("id");
		String Doctor_name = request.getParameter("fname");
		String specialization = request.getParameter("specialist");
		String hospital = request.getParameter("hospital");
		String date = request.getParameter("date");

%>

<form class = "form" action="sddelete" method ="post">
    <div class="row1">
              <div class="col-50">
                <label>Doctor ID</label>
                <select id="id" name="id" <%=Doctor_id %> readonly>
			    <option value="any">Any</option>
			    <option value="D0001">D0001</option>
			    <option value="D0002">D0002</option>
			    <option value="D0003">D0003</option>
			    <option value="D0004">D0004</option>
			    <option value="D0005">D0005</option>
			    <option value="D0006">D0006</option>
			    <option value="D0007">D0007</option>
			    </select></br></br1>
     
              </div>
              
              <div class="col-50">
                <label>Doctor Name</label>
                <select id="fname" name="fname" <%=Doctor_name %> readonly>
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
              	<select id="specialist" name="specialist" <%=specialization %> readonly>
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
              	<select id="hospital" name="hospital" <%=hospital %> readonly>
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
              	<input type="date" id="date" name="date" placeholder="Any" <%=date %> readonly></br></br>
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
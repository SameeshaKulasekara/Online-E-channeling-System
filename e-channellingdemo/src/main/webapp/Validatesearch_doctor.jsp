<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form class = "form" action="sdvalidate" method ="post">
    <div class="row1">
              <div class="col-50">
                <label>Doctor ID</label>
                <input type="text" id="id" name="id" placeholder="Doctor ID.."></br></br>
     
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
              
             
    <hr>

   <input type="submit" value="Validate Details">
   
   </div>
   </div>
   </form>
    </div> 
    </div>

</body>
</html>
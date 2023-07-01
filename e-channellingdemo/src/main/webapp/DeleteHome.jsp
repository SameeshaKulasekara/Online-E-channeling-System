<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DeleteHome Page</title>
<link rel = "stylesheet" href="styles/home.css" type="text/css">
</head>
<body>

      <%
       String id = request.getParameter("id");
       String name = request.getParameter("fname");
       String hospital = request.getParameter("hospital");
       String province = request.getParameter("province");
       String city = request.getParameter("city");
     %>
     
     
    <div class ="container">
    <h3 class = "line2">Hospital Details Delete</h3></br>
    <hr>
    
    <form class = "form" action="delete" method ="post">
    <div class="row1">
              <div class="col-50">
                <label>User ID</label>
                <input type="text" name="id" value="<%=id%>" readonly>
                
              </div>
              <div class="col-50">
                <label>Full Name</label>
                <input type="text" name="fname" value="<%=name%>" readonly></br></br>
              </div>
            </div>

    <label>Hospital</label>
    <input type="text" name="hospital" value="<%= hospital %>" readonly>
    </br></br>
    
    <label>Province</label>
    <input type="text" name="province" value="<%= province %>" readonly>
    </br></br>
    
    <label>City</label>
    <input type="text" name="city" value="<%=city %>" readonly>
    </br></br>
    <hr>

   <input type="submit" name="submit" value="Delete Data">
   </div>
   </form>

</body>
</html>
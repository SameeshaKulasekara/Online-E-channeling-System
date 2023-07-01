<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validate Page</title>
<link rel = "stylesheet" href="styles/home.css" type="text/css">
<style>
   body{
	background-image:url("images/home/home.jpg");
	background-attachment: fixed;
    background-size: cover;
    font-family: Arial;
 }
</style>
</head>
<body>
   
    <form class = "form" action="log" method ="post">
                <label>User ID</label>
                <input type="text" name="id" placeholder="Your ID.."><br>

                <label>Full Name</label>
                <input type="text" id="fname" name="fname" placeholder="Your name.."></br></br>
                
                <input type="submit" name="submit" value="Validate">
    </form>
</body>
</html>
<%@ page language="java" contentType=text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <img src = "images/new/contact.jpg">
  <hr/>
      <div class="form">
        <div class="contact-info">
          <b><h2 class="title">Send Us A Message</h2></b>
          <p class="text"><i><b>Get in touch with our team and leave the online booking frustrations behind....</p></i></b>

          <div class="info">
            <div class="information">
              <img src="images/location.png" class="icon" alt="" />
              <p>DocSKG e-channelling Center,107/3,Gampola road, Kandy, SriLanka.</p>
            </div>
            <div class="information">
              <img src="images/email.png" class="icon" alt="" />
              <p> info@DocSKG.com/ </p>
            </div>
            <div class="information">
              <img src="images/phone.png" class="icon" alt="" />
              <p>Hot-line: +94 712 310 205 / Tel: +94 556 200 244</p>

            </div>
          </div>
          </br></br>

          <div class="social-media">
            <p>Connect with us :</p>
            <div class="social-icons">
             
      <a href="https://www.facebook.com/blossom/"> <img id="img1" src="images/fb.jpg"  width ="20px" ></a>&nbsp;&nbsp;&nbsp;
      <a href="https://www.instagram.com/blossom/"> <img id="img1" src="images/inster.jpg" width ="20px"></a>&nbsp;&nbsp;&nbsp;
      <a href="https://www.twwiter.com/"><img id="img1" src="images/twitter.jpg" width ="20px" ></a>&nbsp;&nbsp;&nbsp;
      <a href="https://www.whatsapp.com/blossom/"><img id="img1" src="images/whap.jfif" width ="20px"></a> 

            </div>
          </div>
        </div>

        <div class="contact-form">

          <form action="contact" method="post" autocomplete="on">
            <h3 class="title">Contact us</h3>
            <div class="input-container">
              <input type="text" name="name" class="input" />
              <span>Username</span>
            </div>
            <div class="input-container">
              <input type="email" name="email" class="input" />
              <span>Email</span>
            </div>
            <div class="input-container">
              <input type="tel" name="mobile" class="input" />
              <span>Phone</span>
            </div>
            <div class="input-container textarea">
              <textarea name="message" class="input"></textarea>
              <span>Message</span>
            </div>
         <div class="button">
              <input type="submit"value="Send">
            </div>
          </form>
        </div>
      </div>
</div>
</body>
</html>
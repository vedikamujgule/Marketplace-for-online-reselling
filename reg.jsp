<%-- 
    Document   : reg
    Created on : 7 Oct, 2017, 4:36:18 PM
    Author     : TANVI JOSHI
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link href="css/home.css" rel="stylesheet" type="text/css">
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <%--  <%@include file="header.jsp" %>--%>
        <title>JSP Page</title>
    </head>
    <body>
                     <div class="b">  <div style="background-image: url('image/32.jpg'); padding:100px; margin-left:00px;width : 1300px ; height: 430px; border: 1px solid black ;">

        <div class="b">
            <h1 style="text-align: center;margin-top: -20px"><b><font size="5" color="orange" >REGISTER YOURSELF </b></h1>
             <div class="reg_image">
                               
            </div>
            <div class="reg_back">
            <pre>

            <form action="register.jsp" method="post">
            <input name="name"  placeholder="Enter your name" type="text" style= "font-size: 20px;width:200px;height:30px;margin-top: -140px;margin-left: -100px" >
            <input name="email"  placeholder="email" type="text" style= "font-size: 20px;width:200px;height:30px;margin-left: -100px"> 
            <input name="password"  placeholder="password" type="password" style= "font-size: 20px;width:200px;height:30px;margin-left: -100px"> 
            <input name="repassword"  placeholder="repassword" type="password" style= "font-size: 20px;width:200px;height:30px;margin-left: -100px"> 
            <input name="contact"  placeholder="contact" type="text" style= "font-size: 20px;width:200px;height:30px;margin-left: -100px"> 
            <input value="Register" type="submit" class="btn" style="color: #ffffff ; text-align:center ;padding-bottom: 30px; padding-top:  20px  ; padding-left: 40px; padding-right: 100px;margin-left: -100px"> 
            </form>
            </pre>
            </div>
        </div>

         
    </body>
   
</html>

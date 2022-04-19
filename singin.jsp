<%-- 
    Document   : singin
    Created on : 4 Oct, 2017, 9:17:51 AM
    Author     : TANVI JOSHI
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <link href="css/home.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
                <body>

                   
       <%-- <div class="reg_image">
           <%-- <img src="image/02.png" width="400px" />--%>
                
            
        <div class="reg_back">
             <div class="b">  <div style="background-image: url('image/l.jpg'); padding:100px; margin-left: -600px;width : 1400px ; height: 500px; border: 1px solid black ;">
            <div style="background-image: url('image/tr.jpg'); padding:100px; margin-left: 400px;width : 400px ; height: 300px; border: 1px solid black ;">

                     <h1 style="text-align: center; margin-top: -100px;"><b><font size="40" color="#F0E68C" >LOGIN FORM</b></h1>

        <form method="get" action="login.jsp">
            <input type="text" name="uname" placeholder="Enter your name " <input name="namec" type="text" placeholder="enter name" style="margin-left: 20px; width: 350px;"/>
            <br><input type="password" name="pass" placeholder="Enter password " <input name="namec" type="text" placeholder="enter name" style="margin-left: 20px; width: 350px;"/>
            <br><input type="text" name="contact" placeholder=" Enter Contact number" <input name="namec" type="text" placeholder="enter name" style="margin-left: 20px; width: 350px;" />
                        <br><input value="Login"   type="submit" class="btn" style="padding-bottom: 30px; margin-left: 20px;margin-top: 40px; color: #ffffff ; text-align:center ;padding-bottom: 30px; width: 100px;  padding-top:  20px  ; padding-left: 40px; padding-right: 90px"> 
                  
            <a href="reg.jsp" style="margin-left: 250px; margin-bottom: 50px; font-size: 25px;">Sign up</a> <h1 style="text-align: center; margin-left: -90px;margin-top: -60px;"><b><font size="3" color="mediumslateblue" >Don't have an account?</b></h1>

            </div>
                 </div>
             </div>
             </div>
       </form>
        </body
                

        
    


<%-- 
    Document   : contactus
    Created on : 7 Oct, 2017, 4:36:18 PM
    Author     : TANVI JOSHI
--%>

<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/home.css"/>
        <%@ include file="header.jsp"%>
        <title>JSP Page</title>
    </head>
    <body>
        
        
     

        <div class="contact-us" style="background-color: #3498db; padding-bottom: 100px; padding-top: 10px; margin-top: 20px;">
        <h1 style="color:  #ffffff; margin-left: 50px;">Contact US</h1>
        <form action="contactus.jsp" method="get">
            <br><br>  <label style=" color: #ffffff; font-size: 20px; margin-left: 28px; ">Name: <input name="namec" type="text" placeholder="enter name" style="margin-left: 167px; width: 350px;"/></label>
          <br><br>  <label style=" color: #ffffff; font-size: 20px; margin-left: 28px;">Phone number: <input name="pnumber" type="text" placeholder="enter Phone number:" style="margin-left: 96px; width: 350px;"/></label>
         <br><br>   <label style=" color: #ffffff; font-size: 20px; margin-left: 28px;">Email: <input name="emailc" type="text" placeholder="enter mail id" style="margin-left: 165px; width: 350px;"/></label>
         <br><br>   <label style=" color: #ffffff; font-size: 20px; margin-left: 28px;">Comments and questions:<textarea name="comment" style="width:350px; border:1px solid #999999; margin-top: 0px;margin-left: 15px; "></textarea></label>
            <br><br>
             <input type="submit" name="btn" class ="cbtn" />
            
        </form>
    <h1></h1>
          <%
              String name = request.getParameter("namec");
        String phone = request.getParameter("pnumber");
        String email = request.getParameter("emailc");
        String query = request.getParameter("comment");
     try{
         
          Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "admin");
            
         
          Statement stmt = con.createStatement();
           stmt.execute("insert into contact(name,phone,email,query)values('"+name+"','"+phone+"','"+email+"','"+query+"')");
          out.println("registration success");
         
         
        }catch (SQLException ex) {
            //Logger.getLogger(verify2.class.getName()).log(Level.SEVERE, null, ex);
        }
     %>
        
    </div>
        
        <div class="contact-us-right"style="background-color: #3498db;padding-bottom: 100px;">
            
            <p style="color: #ffffff;margin-top: -50px;margin-left: 22px;"><br>
                <b style="font-size: 20px;">K.K.Wagh college</b><br>
                <b style="font-size: 20px;">Address</b> hirabai haridas<br>
            <b style="font-size: 20px;">Phone</b> : 0253
            <br>
            <b style="font-size: 20px;">Website</b> : 
            
            </p>
            
        </div> 
        <div style="margin-top: 30px;">
        <%@ include file="footer.jsp"%>
        </div>
        
    </body>
</html>
